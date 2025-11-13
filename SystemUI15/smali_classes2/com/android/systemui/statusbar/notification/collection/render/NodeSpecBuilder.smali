.class public final Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilder;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field public final sectionHeaderVisibilityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/SectionHeaderVisibilityProvider;

.field public final sectionsFeatureManager:Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;

.field public final viewBarn:Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/render/MediaContainerController;Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;Lcom/android/systemui/statusbar/notification/collection/provider/SectionHeaderVisibilityProvider;Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilderLogger;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilder;->sectionsFeatureManager:Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilder;->sectionHeaderVisibilityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/SectionHeaderVisibilityProvider;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilder;->viewBarn:Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;

    sget-object p0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    return-void
.end method


# virtual methods
.method public final buildNodeSpec(Lcom/android/systemui/statusbar/notification/collection/render/NodeController;Ljava/util/List;)Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;
    .locals 10

    invoke-static {}, Landroid/os/Trace;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "NodeSpecBuilder.buildNodeSpec"

    invoke-static {v1}, Lcom/android/app/tracing/TraceUtilsKt;->beginSlice(Ljava/lang/String;)V

    :cond_0
    :try_start_0
    new-instance v1, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;-><init>(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpec;Lcom/android/systemui/statusbar/notification/collection/render/NodeController;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilder;->sectionsFeatureManager:Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilder;->sectionHeaderVisibilityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/SectionHeaderVisibilityProvider;

    iget-boolean v3, v3, Lcom/android/systemui/statusbar/notification/collection/provider/SectionHeaderVisibilityProvider;->sectionHeadersVisible:Z

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    move-object v4, v2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    invoke-virtual {v5}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getSection()Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;

    move-result-object v6

    invoke-static {v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v7, v6, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->headerController:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    :try_start_1
    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    invoke-virtual {v6, v4}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    if-eqz v4, :cond_1

    iget-object v8, v4, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->headerController:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    goto :goto_1

    :cond_1
    move-object v8, v2

    :goto_1
    invoke-static {v7, v8}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_2

    if-eqz v3, :cond_2

    if-eqz v7, :cond_2

    iget-object v8, v1, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;->children:Ljava/util/List;

    new-instance v9, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;

    invoke-direct {v9, v1, v7}, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;-><init>(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpec;Lcom/android/systemui/statusbar/notification/collection/render/NodeController;)V

    check-cast v8, Ljava/util/ArrayList;

    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_3

    :cond_2
    :goto_2
    invoke-interface {p1, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-object v4, v6

    :cond_3
    iget-object v6, v1, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;->children:Ljava/util/List;

    invoke-virtual {p0, v1, v5}, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilder;->buildNotifNode(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;

    move-result-object v5

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    iget-object p1, v6, Lcom/android/systemui/statusbar/notification/collection/listbuilder/NotifSection;->label:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Section "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " has been duplicated"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_6
    return-object v1

    :goto_3
    if-eqz v0, :cond_7

    invoke-static {}, Lcom/android/app/tracing/TraceUtilsKt;->endSlice()V

    :cond_7
    throw p0
.end method

.method public final buildNotifNode(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;
    .locals 3

    instance-of v0, p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilder;->viewBarn:Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;

    if-eqz v0, :cond_0

    new-instance p0, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;

    invoke-virtual {v1, p2}, Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;->requireNodeController(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Lcom/android/systemui/statusbar/notification/collection/render/NotifViewController;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;-><init>(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpec;Lcom/android/systemui/statusbar/notification/collection/render/NodeController;)V

    goto :goto_1

    :cond_0
    instance-of v0, p2, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    if-eqz v0, :cond_3

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;

    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    iget-object v2, p2, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/notification/collection/render/NotifViewBarn;->requireNodeController(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Lcom/android/systemui/statusbar/notification/collection/render/NotifViewController;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;-><init>(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpec;Lcom/android/systemui/statusbar/notification/collection/render/NodeController;)V

    iget-object p1, p2, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUnmodifiableChildren:Ljava/util/List;

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;->children:Ljava/util/List;

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, v0, p2}, Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecBuilder;->buildNotifNode(Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Lcom/android/systemui/statusbar/notification/collection/render/NodeSpecImpl;

    move-result-object p2

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    move-object p0, v0

    :goto_1
    return-object p0

    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Required value was null."

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unexpected entry: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
