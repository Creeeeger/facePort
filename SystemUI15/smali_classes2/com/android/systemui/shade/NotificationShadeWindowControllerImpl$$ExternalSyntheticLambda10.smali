.class public final synthetic Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda10;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/BooleanSupplier;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda10;->f$0:Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    return-void
.end method


# virtual methods
.method public final getAsBoolean()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl$$ExternalSyntheticLambda10;->f$0:Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    return p0
.end method
