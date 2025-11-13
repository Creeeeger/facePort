.class Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView$2;
.super Ljava/lang/Object;
.source "WifiApQrInfoBottomView.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;->showInfoDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView$2;->this$0:Lcom/samsung/android/settings/wifi/mobileap/WifiApQrInfoBottomView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p0, "TETH_010"

    const-string p1, "8028"

    .line 256
    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
