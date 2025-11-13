.class public final Lcom/android/systemui/common/ui/ConfigurationState;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final context:Landroid/content/Context;

.field public final layoutInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/content/Context;Landroid/view/LayoutInflater;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/common/ui/ConfigurationState;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p3, p0, Lcom/android/systemui/common/ui/ConfigurationState;->layoutInflater:Landroid/view/LayoutInflater;

    return-void
.end method
