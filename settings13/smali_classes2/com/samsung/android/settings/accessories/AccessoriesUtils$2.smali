.class Lcom/samsung/android/settings/accessories/AccessoriesUtils$2;
.super Ljava/lang/Object;
.source "AccessoriesUtils.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessories/AccessoriesUtils;->showDownloadLedAppDialog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$pkg:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$2;->val$pkg:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 66
    iget-object p1, p0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$2;->val$context:Landroid/content/Context;

    iget-object p0, p0, Lcom/samsung/android/settings/accessories/AccessoriesUtils$2;->val$pkg:Ljava/lang/String;

    invoke-static {p1, p0}, Lcom/samsung/android/settings/accessories/AccessoriesUtils;->sendDownloadPopupEventBroadcastToQIP(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
