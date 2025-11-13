.class public final Lcom/android/systemui/communal/widgets/EditWidgetsActivityStarterImpl;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/communal/widgets/EditWidgetsActivityStarter;


# instance fields
.field public final activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

.field public final applicationContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/plugins/ActivityStarter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/communal/widgets/EditWidgetsActivityStarterImpl;->applicationContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/communal/widgets/EditWidgetsActivityStarterImpl;->activityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    return-void
.end method
