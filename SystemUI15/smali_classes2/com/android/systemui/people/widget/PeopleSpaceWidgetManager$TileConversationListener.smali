.class public final Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$TileConversationListener;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/app/people/PeopleManager$ConversationListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$TileConversationListener;->this$0:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onConversationUpdate(Landroid/app/people/ConversationChannel;)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$TileConversationListener;->this$0:Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;

    iget-object v0, v0, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager;->mBgExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda5;

    const/4 v2, 0x3

    invoke-direct {v1, v2, p0, p1}, Lcom/android/systemui/people/widget/PeopleSpaceWidgetManager$$ExternalSyntheticLambda5;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
