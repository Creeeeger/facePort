.class public final Lcom/android/systemui/volume/VolumePanelFactory;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# static fields
.field public static volumePanelDialog:Lcom/android/systemui/volume/VolumePanelDialog;


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/volume/VolumePanelFactory$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/volume/VolumePanelFactory$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/animation/DialogTransitionAnimator;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/volume/VolumePanelFactory;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/volume/VolumePanelFactory;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-void
.end method
