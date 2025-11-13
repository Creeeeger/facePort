.class Lcom/android/internal/widget/FadingWearableScrollView$1;
.super Ljava/lang/Object;
.source "FadingWearableScrollView.java"

# interfaces
.implements Lcom/android/internal/widget/ViewGroupFader$AnimationCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/FadingWearableScrollView;->createFader(Landroid/view/ViewGroup;)Lcom/android/internal/widget/ViewGroupFader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Lcom/android/internal/widget/FadingWearableScrollView;


# direct methods
.method constructor blacklist <init>(Lcom/android/internal/widget/FadingWearableScrollView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    iput-object p1, p0, Lcom/android/internal/widget/FadingWearableScrollView$1;->this$0:Lcom/android/internal/widget/FadingWearableScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist shouldFadeFromBottom(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist shouldFadeFromTop(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public blacklist viewHasBecomeFullSize(Landroid/view/View;)V
    .locals 0

    return-void
.end method
