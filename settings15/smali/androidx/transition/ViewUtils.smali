.class public abstract Landroidx/transition/ViewUtils;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# static fields
.field public static final IMPL:Landroidx/transition/ViewUtilsApi29;

.field public static final TRANSITION_ALPHA:Landroidx/transition/ViewUtils$1;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroidx/transition/ViewUtils$1;

    const-class v1, Ljava/lang/Float;

    const-string/jumbo v2, "translationAlpha"

    const/4 v3, 0x0

    invoke-direct {v0, v3, v1, v2}, Landroidx/transition/ViewUtils$1;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroidx/transition/ViewUtils;->TRANSITION_ALPHA:Landroidx/transition/ViewUtils$1;

    new-instance v0, Landroidx/transition/ViewUtils$1;

    const-class v1, Landroid/graphics/Rect;

    const-string v2, "clipBounds"

    const/4 v3, 0x1

    invoke-direct {v0, v3, v1, v2}, Landroidx/transition/ViewUtils$1;-><init>(ILjava/lang/Class;Ljava/lang/String;)V

    return-void
.end method
