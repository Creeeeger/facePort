.class Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$7;
.super Ljava/lang/Object;
.source "WifiApFamilySharingSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;)V
    .locals 0

    .line 521
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings$7;->this$0:Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 524
    invoke-static {}, Lcom/samsung/android/settings/wifi/mobileap/autohotspot/WifiApFamilySharingSettings;->-$$Nest$sfgetTAG()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DIALOG_DELETE_FAMILY_GROUP cancel button clicked"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
