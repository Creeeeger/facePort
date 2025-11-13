.class Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator$2;
.super Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifStabilityManager;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private canMoveForHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget v1, Lcom/android/systemui/statusbar/notification/shared/NotificationMinimalismPrototype$V2;->$r8$clinit:I

    invoke-static {}, Lcom/android/systemui/Flags;->notificationMinimalismPrototype()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;

    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;->-$$Nest$fgetmHeadsUpManager(Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;)Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;

    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/BaseHeadsUpManager;->isHeadsUpEntry(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;->-$$Nest$fgetmVisibilityLocationProvider(Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;)Lcom/android/systemui/statusbar/notification/VisibilityLocationProvider;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/notification/VisibilityLocationProvider;->isInVisibleLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0

    :cond_1
    return v0
.end method


# virtual methods
.method public isEntryReorderingAllowed(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;->-$$Nest$fgetmReorderingAllowed(Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator$2;->canMoveForHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isEveryChangeAllowed()Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;->-$$Nest$fgetmReorderingAllowed(Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;)Z

    move-result p0

    return p0
.end method

.method public isGroupChangeAllowed(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;->-$$Nest$fgetmIsSuppressingGroupChange(Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;->-$$Nest$fputmIsSuppressingGroupChange(Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public isGroupPruneAllowed(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)Z
    .locals 2

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;

    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;->-$$Nest$fgetmReorderingAllowed(Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;)Z

    move-result p1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;->-$$Nest$fgetmIsSuppressingGroupChange(Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;)Z

    move-result v0

    xor-int/lit8 v1, p1, 0x1

    or-int/2addr v0, v1

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;->-$$Nest$fputmIsSuppressingGroupChange(Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;Z)V

    return p1
.end method

.method public isPipelineRunAllowed()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;->-$$Nest$fgetmIsSuppressingPipelineRun(Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;)Z

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;

    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;->-$$Nest$fgetmPipelineRunAllowed(Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;)Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    or-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;->-$$Nest$fputmIsSuppressingPipelineRun(Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;->-$$Nest$fgetmPipelineRunAllowed(Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;)Z

    move-result p0

    return p0
.end method

.method public isSectionChangeAllowed(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;->-$$Nest$fgetmReorderingAllowed(Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator$2;->canMoveForHeadsUp(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;->-$$Nest$fgetmEntriesThatCanChangeSection(Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;

    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;->-$$Nest$fgetmEntriesWithSuppressedSectionChange(Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;)Ljava/util/Set;

    move-result-object p0

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    return v0
.end method

.method public onBeginRun()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;->-$$Nest$fputmIsSuppressingPipelineRun(Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;->-$$Nest$fputmIsSuppressingGroupChange(Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;Z)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;

    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;->-$$Nest$fgetmEntriesWithSuppressedSectionChange(Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;

    invoke-static {p0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;->-$$Nest$fputmIsSuppressingEntryReorder(Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;Z)V

    return-void
.end method

.method public onEntryReorderSuppressed()V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator$2;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;->-$$Nest$fputmIsSuppressingEntryReorder(Lcom/android/systemui/statusbar/notification/collection/coordinator/VisualStabilityCoordinator;Z)V

    return-void
.end method
