.class Landroid/app/people/PeopleManager$ConversationListenerProxy;
.super Landroid/app/people/IConversationListener$Stub;
.source "PeopleManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/people/PeopleManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ConversationListenerProxy"
.end annotation


# instance fields
.field private final blacklist mExecutor:Ljava/util/concurrent/Executor;

.field private final blacklist mListener:Landroid/app/people/PeopleManager$ConversationListener;


# direct methods
.method public static synthetic blacklist $r8$lambda$FLwX8w41t_fRGvKEN6qs6zgZY28(Landroid/app/people/PeopleManager$ConversationListenerProxy;Landroid/app/people/ConversationChannel;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/people/PeopleManager$ConversationListenerProxy;->lambda$onConversationUpdate$0(Landroid/app/people/ConversationChannel;)V

    return-void
.end method

.method constructor blacklist <init>(Ljava/util/concurrent/Executor;Landroid/app/people/PeopleManager$ConversationListener;)V
    .locals 0

    invoke-direct {p0}, Landroid/app/people/IConversationListener$Stub;-><init>()V

    iput-object p1, p0, Landroid/app/people/PeopleManager$ConversationListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    iput-object p2, p0, Landroid/app/people/PeopleManager$ConversationListenerProxy;->mListener:Landroid/app/people/PeopleManager$ConversationListener;

    return-void
.end method

.method private synthetic blacklist lambda$onConversationUpdate$0(Landroid/app/people/ConversationChannel;)V
    .locals 1

    iget-object v0, p0, Landroid/app/people/PeopleManager$ConversationListenerProxy;->mListener:Landroid/app/people/PeopleManager$ConversationListener;

    invoke-interface {v0, p1}, Landroid/app/people/PeopleManager$ConversationListener;->onConversationUpdate(Landroid/app/people/ConversationChannel;)V

    return-void
.end method


# virtual methods
.method public blacklist onConversationUpdate(Landroid/app/people/ConversationChannel;)V
    .locals 2

    iget-object v0, p0, Landroid/app/people/PeopleManager$ConversationListenerProxy;->mListener:Landroid/app/people/PeopleManager$ConversationListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/app/people/PeopleManager$ConversationListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/app/people/PeopleManager$ConversationListenerProxy;->mExecutor:Ljava/util/concurrent/Executor;

    new-instance v1, Landroid/app/people/PeopleManager$ConversationListenerProxy$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Landroid/app/people/PeopleManager$ConversationListenerProxy$$ExternalSyntheticLambda0;-><init>(Landroid/app/people/PeopleManager$ConversationListenerProxy;Landroid/app/people/ConversationChannel;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    :goto_0
    invoke-static {}, Landroid/app/people/PeopleManager;->-$$Nest$sfgetLOG_TAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Binder is dead"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
