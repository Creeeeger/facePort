.class public final synthetic Lcom/android/systemui/shade/NotificationsQuickSettingsContainer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/shade/NotificationsQuickSettingsContainer$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p0

    return p0
.end method
