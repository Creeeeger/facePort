.class Lcom/android/settings/network/apn/ApnSettings$8;
.super Ljava/lang/Object;
.source "ApnSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/network/apn/ApnSettings;->showWarning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/apn/ApnSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/network/apn/ApnSettings;)V
    .locals 0

    .line 1361
    iput-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$8;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1364
    iget-object p1, p0, Lcom/android/settings/network/apn/ApnSettings$8;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-static {p1}, Lcom/android/settings/network/apn/ApnSettings;->-$$Nest$mrestoreDefaultApn(Lcom/android/settings/network/apn/ApnSettings;)Z

    .line 1365
    iget-object p0, p0, Lcom/android/settings/network/apn/ApnSettings$8;->this$0:Lcom/android/settings/network/apn/ApnSettings;

    invoke-virtual {p0}, Lcom/android/settings/network/apn/ApnSettings;->getMetricsCategory()I

    move-result p0

    const/16 p1, 0xe2a

    invoke-static {p0, p1}, Lcom/samsung/android/settings/logging/LoggingHelper;->insertEventLogging(II)V

    return-void
.end method
