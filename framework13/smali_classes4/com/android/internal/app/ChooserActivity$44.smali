.class Lcom/android/internal/app/ChooserActivity$44;
.super Landroid/database/ContentObserver;
.source "ChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity;->semCallPinQuickShareSlice()Z
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

    .line 16024
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$44;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public whitelist onChange(ZLandroid/net/Uri;)V
    .locals 2
    .param p1, "selfChange"    # Z
    .param p2, "changeUri"    # Landroid/net/Uri;

    .line 16027
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 16028
    const-string v0, "ChooserActivity"

    const-string v1, "QuickShare onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16029
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$44;->this$0:Lcom/android/internal/app/ChooserActivity;

    invoke-static {v0}, Lcom/android/internal/app/ChooserActivity;->-$$Nest$mcallSliceDataFromQuickShareProvider(Lcom/android/internal/app/ChooserActivity;)V

    .line 16030
    return-void
.end method
