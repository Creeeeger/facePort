.class public final Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public mAppIcon:Landroid/graphics/Bitmap;

.field public mLayoutId:I

.field public mName:Ljava/lang/CharSequence;

.field public mOnClickListener:Landroid/view/View$OnClickListener;

.field public mOnTouchListener:Landroid/view/View$OnTouchListener;

.field public final mParent:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/HandleMenu$Builder;->mParent:Lcom/android/wm/shell/windowdecor/DesktopModeWindowDecoration;

    return-void
.end method
