.class Lcom/android/internal/app/WhitePointColorController$1;
.super Landroid/database/ContentObserver;
.source "WhitePointColorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/WhitePointColorController;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/WhitePointColorController;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/WhitePointColorController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/WhitePointColorController;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 73
    iput-object p1, p0, Lcom/android/internal/app/WhitePointColorController$1;->this$0:Lcom/android/internal/app/WhitePointColorController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .line 76
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 78
    if-nez p2, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, "setting":Ljava/lang/String;
    :goto_0
    if-eqz v0, :cond_1

    .line 80
    iget-object v1, p0, Lcom/android/internal/app/WhitePointColorController$1;->this$0:Lcom/android/internal/app/WhitePointColorController;

    invoke-static {v1, v0}, Lcom/android/internal/app/WhitePointColorController;->-$$Nest$monSettingChanged(Lcom/android/internal/app/WhitePointColorController;Ljava/lang/String;)V

    .line 82
    :cond_1
    return-void
.end method
