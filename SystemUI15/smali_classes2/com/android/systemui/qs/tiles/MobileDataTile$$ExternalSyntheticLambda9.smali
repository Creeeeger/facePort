.class public final synthetic Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

.field public final synthetic f$1:Landroid/widget/CheckBox;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/tiles/MobileDataTile;Landroid/widget/CheckBox;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda9;->f$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    iput-object p2, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda9;->f$1:Landroid/widget/CheckBox;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda9;->f$0:Lcom/android/systemui/qs/tiles/MobileDataTile;

    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MobileDataTile$$ExternalSyntheticLambda9;->f$1:Landroid/widget/CheckBox;

    iget-object p2, p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p0

    const-string v0, "mobile_data_off_popup_show_again"

    invoke-static {p2, v0, p0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object p0, p1, Lcom/android/systemui/qs/tiles/MobileDataTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    return-void
.end method
