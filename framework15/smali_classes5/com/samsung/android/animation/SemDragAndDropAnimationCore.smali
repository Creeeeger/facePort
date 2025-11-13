.class Lcom/samsung/android/animation/SemDragAndDropAnimationCore;
.super Ljava/lang/Object;
.source "SemDragAndDropAnimationCore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;,
        Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;,
        Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemSelectHighlightingAnimation;,
        Lcom/samsung/android/animation/SemDragAndDropAnimationCore$TranslateItemAnimation;,
        Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimation;
    }
.end annotation


# static fields
.field static final blacklist SELECT_HIGHLIGHT_ANIM_DURATION:I = 0x96

.field private static final blacklist TAG:Ljava/lang/String; = "SemDragAndDropAnimationCore"

.field static final blacklist TRANSLATE_ITEM_ANIM_DURATION:I = 0x12c


# instance fields
.field blacklist itemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

.field private blacklist mItemAnimationListener:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;

.field private blacklist mView:Landroid/view/View;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmItemAnimationListener(Lcom/samsung/android/animation/SemDragAndDropAnimationCore;)Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->mItemAnimationListener:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmView(Lcom/samsung/android/animation/SemDragAndDropAnimationCore;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->mView:Landroid/view/View;

    return-object p0
.end method

.method constructor blacklist <init>(Landroid/view/View;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    invoke-direct {v0, p0}, Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;-><init>(Lcom/samsung/android/animation/SemDragAndDropAnimationCore;)V

    iput-object v0, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->itemAnimator:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimator;

    iput-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->mView:Landroid/view/View;

    return-void
.end method


# virtual methods
.method blacklist setAnimationListener(Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/animation/SemDragAndDropAnimationCore;->mItemAnimationListener:Lcom/samsung/android/animation/SemDragAndDropAnimationCore$ItemAnimationListener;

    return-void
.end method
