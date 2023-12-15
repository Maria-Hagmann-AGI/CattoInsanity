sap.ui.define(["sap/ui/core/mvc/Controller"], function (Controller) {
  "use strict";

  return Controller.extend("catsanity.controller.Overview", {
    onInit() {},

    onCattoCreate() {

    },
    onCattoEdit() {

    },
    onCattoDelete() {
        
    },

    navToCattoDetails(oEvent) {
      const oRouter = this.getOwnerComponent().getRouter();
      const sCattoId = oEvent.getSource().getBindingContext().getProperty("ID");

      oRouter.navTo("cattoDetails",{cattoId: sCattoId});
    }
  });
});
