.class Lcom/samsung/android/settings/accessories/controller/SmartAccessoryController$1;
.super Ljava/lang/Object;
.source "SmartAccessoryController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/settings/accessories/controller/SmartAccessoryController;->showDownloadGalaxyFriendsAppDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/settings/accessories/controller/SmartAccessoryController;


# direct methods
.method constructor <init>(Lcom/samsung/android/settings/accessories/controller/SmartAccessoryController;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/samsung/android/settings/accessories/controller/SmartAccessoryController$1;->this$0:Lcom/samsung/android/settings/accessories/controller/SmartAccessoryController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 92
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
