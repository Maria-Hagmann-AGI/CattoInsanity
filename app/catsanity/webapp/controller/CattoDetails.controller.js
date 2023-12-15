sap.ui.define(["sap/ui/core/mvc/Controller"], function (Controller) {
  "use strict";

  return Controller.extend("catsanity.controller.CattoDetails", {

    onInit() {
        this.getOwnerComponent().getRouter()
          .getRoute("cattoDetails")
          .attachPatternMatched(this._onObjectMatched, this);
      },
    onNavBack() {
      const oRouter = this.getOwnerComponent().getRouter();
      oRouter.navTo("overview");
    },

    _onObjectMatched(oEvent) {
        const sCattoID = oEvent.getParameter("arguments").cattoId;
        this.getView().bindElement({
          path: `/Cats(ID=${sCattoID},IsActiveEntity=true)`
        });
      },

  });
});