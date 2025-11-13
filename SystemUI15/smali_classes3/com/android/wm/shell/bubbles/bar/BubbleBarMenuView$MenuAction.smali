.class public final Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView$MenuAction;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final mIcon:Landroid/graphics/drawable/Icon;

.field public final mOnClick:Landroid/view/View$OnClickListener;

.field public final mTint:I

.field public final mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Icon;Ljava/lang/String;ILandroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView$MenuAction;->mIcon:Landroid/graphics/drawable/Icon;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView$MenuAction;->mTitle:Ljava/lang/String;

    iput p3, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView$MenuAction;->mTint:I

    iput-object p4, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView$MenuAction;->mOnClick:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Icon;Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/android/wm/shell/bubbles/bar/BubbleBarMenuView$MenuAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/String;ILandroid/view/View$OnClickListener;)V

    return-void
.end method
