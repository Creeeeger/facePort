.class Lcom/android/internal/app/ChooserActivity$45;
.super Landroid/database/ContentObserver;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity;->semCallPinQuickShareTransStatusSlice()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/app/ChooserActivity;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/app/ChooserActivity;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/app/ChooserActivity;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 16113
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$45;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "changeUri"    # Landroid/net/Uri;

    .line 16116
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 16117
    const-string v0, "ChooserActivity"

    const-string v1, "QuickShareTranscode onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16118
    sget-object v0, Lcom/samsung/android/share/SemShareConstants;->QUICK_SHARE_TRANSCODE_SLICE_URI:Landroid/net/Uri;

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 16119
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$45;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mcallTranscodingStatusFromQuickShareProvider(Lcom/android/internal/app/ChooserActivity;)V

    .line 16121
    :cond_0
    return-void
.end method
