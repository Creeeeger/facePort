.class final enum Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;
.super Ljava/lang/Enum;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/MotionLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TransitionState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

.field public static final enum FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

.field public static final enum MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

.field public static final enum SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

.field public static final enum UNDEFINED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    const-string v1, "UNDEFINED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->UNDEFINED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    new-instance v1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    const-string v2, "SETUP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v1, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->SETUP:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    new-instance v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    const-string v3, "MOVING"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v2, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->MOVING:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    new-instance v3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    const-string v4, "FINISHED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sput-object v3, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->FINISHED:Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    filled-new-array {v0, v1, v2, v3}, [Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    move-result-object v0

    sput-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->$VALUES:[Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;
    .locals 1

    const-class v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    return-object p0
.end method

.method public static values()[Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;
    .locals 1

    sget-object v0, Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->$VALUES:[Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    invoke-virtual {v0}, [Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/constraintlayout/motion/widget/MotionLayout$TransitionState;

    return-object v0
.end method
