.class Lcom/samsung/android/widget/SemIndexScrollView$1;
.super Ljava/lang/Object;
.source "SemIndexScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/widget/SemIndexScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/samsung/android/widget/SemIndexScrollView;


# direct methods
.method constructor blacklist <init>(Lcom/samsung/android/widget/SemIndexScrollView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/samsung/android/widget/SemIndexScrollView;

    .line 1773
    iput-object p1, p0, Lcom/samsung/android/widget/SemIndexScrollView$1;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .locals 1

    .line 1776
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$1;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView;->-$$Nest$fgetmIndexScrollPreview(Lcom/samsung/android/widget/SemIndexScrollView;)Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1777
    iget-object v0, p0, Lcom/samsung/android/widget/SemIndexScrollView$1;->this$0:Lcom/samsung/android/widget/SemIndexScrollView;

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView;->-$$Nest$fgetmIndexScrollPreview(Lcom/samsung/android/widget/SemIndexScrollView;)Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;->-$$Nest$mfadeOutAnimation(Lcom/samsung/android/widget/SemIndexScrollView$IndexScrollPreview;)V

    .line 1779
    :cond_0
    return-void
.end method
