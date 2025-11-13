.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# annotations
.annotation runtime Lcom/android/systemui/statusbar/notification/collection/coordinator/dagger/CoordinatorScope;
.end annotation


# static fields
.field public static final $stable:I

.field private static final Companion:Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$Companion;

.field private static final TAG:Ljava/lang/String; = "ConversationCoordinator"


# instance fields
.field private final conversationHeaderNodeController:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

.field private final conversationIconManager:Lcom/android/systemui/statusbar/notification/icon/ConversationIconManager;

.field private final highPriorityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

.field private final notifComparator:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;

.field private final notificationPromoter:Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$notificationPromoter$1;

.field private final onBeforeRenderListListener:Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeRenderListListener;

.field private final peopleAlertingSectioner:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;

.field private final peopleHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

.field private final peopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;

.field private final peopleSilentSectioner:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;

.field private final priorityPeopleSectioner:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;

.field private final promotedEntriesToSummaryOfSameChannel:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->Companion:Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->$stable:I

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;Lcom/android/systemui/statusbar/notification/icon/ConversationIconManager;Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;Lcom/android/systemui/statusbar/notification/collection/render/NodeController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->peopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->conversationIconManager:Lcom/android/systemui/statusbar/notification/icon/ConversationIconManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->highPriorityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->peopleHeaderController:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->promotedEntriesToSummaryOfSameChannel:Ljava/util/Map;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$onBeforeRenderListListener$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$onBeforeRenderListListener$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->onBeforeRenderListListener:Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeRenderListListener;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$notificationPromoter$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$notificationPromoter$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->notificationPromoter:Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$notificationPromoter$1;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$priorityPeopleSectioner$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$priorityPeopleSectioner$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->priorityPeopleSectioner:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$peopleAlertingSectioner$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$peopleAlertingSectioner$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->peopleAlertingSectioner:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$peopleSilentSectioner$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$peopleSilentSectioner$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->peopleSilentSectioner:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;

    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$notifComparator$1;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$notifComparator$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->notifComparator:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->conversationHeaderNodeController:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    return-void
.end method

.method public static final synthetic access$getConversationHeaderNodeController$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;)Lcom/android/systemui/statusbar/notification/collection/render/NodeController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->conversationHeaderNodeController:Lcom/android/systemui/statusbar/notification/collection/render/NodeController;

    return-object p0
.end method

.method public static final synthetic access$getConversationIconManager$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;)Lcom/android/systemui/statusbar/notification/icon/ConversationIconManager;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->conversationIconManager:Lcom/android/systemui/statusbar/notification/icon/ConversationIconManager;

    return-object p0
.end method

.method public static final synthetic access$getHighPriorityProvider$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;)Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->highPriorityProvider:Lcom/android/systemui/statusbar/notification/collection/provider/HighPriorityProvider;

    return-object p0
.end method

.method public static final synthetic access$getNotifComparator$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;)Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->notifComparator:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifComparator;

    return-object p0
.end method

.method public static final synthetic access$getPeopleType(Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->getPeopleType(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)I

    move-result p0

    return p0
.end method

.method public static final synthetic access$getPromotedEntriesToSummaryOfSameChannel$p(Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->promotedEntriesToSummaryOfSameChannel:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic access$isConversation(Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->isConversation(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z

    move-result p0

    return p0
.end method

.method private final getPeopleType(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)I
    .locals 0

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->getRepresentativeEntry()Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->peopleNotificationIdentifier:Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifier;

    check-cast p0, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/people/PeopleNotificationIdentifierImpl;->getPeopleNotificationType(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private final isConversation(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->getPeopleType(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->notificationPromoter:Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator$notificationPromoter$1;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addPromoter(Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifPromoter;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->onBeforeRenderListListener:Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeRenderListListener;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addOnBeforeRenderListListener(Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeRenderListListener;)V

    return-void
.end method

.method public final getPeopleAlertingSectioner()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->peopleAlertingSectioner:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;

    return-object p0
.end method

.method public final getPeopleSilentSectioner()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->peopleSilentSectioner:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;

    return-object p0
.end method

.method public final getPriorityPeopleSectioner()Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/ConversationCoordinator;->priorityPeopleSectioner:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/NotifSectioner;

    return-object p0
.end method
