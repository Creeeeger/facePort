.class public interface abstract Lcom/android/systemui/animation/Expandable;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static final Companion:Lcom/android/systemui/animation/Expandable$Companion;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/systemui/animation/Expandable$Companion;->$$INSTANCE:Lcom/android/systemui/animation/Expandable$Companion;

    sput-object v0, Lcom/android/systemui/animation/Expandable;->Companion:Lcom/android/systemui/animation/Expandable$Companion;

    return-void
.end method


# virtual methods
.method public abstract activityTransitionController(Ljava/lang/Integer;)Lcom/android/systemui/animation/ActivityTransitionAnimator$Controller;
.end method

.method public abstract dialogTransitionController(Lcom/android/systemui/animation/DialogCuj;)Lcom/android/systemui/animation/DialogTransitionAnimator$Controller;
.end method

.method public abstract getView()Landroid/view/View;
.end method
