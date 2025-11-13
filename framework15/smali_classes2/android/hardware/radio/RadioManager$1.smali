.class Landroid/hardware/radio/RadioManager$1;
.super Landroid/hardware/radio/IAnnouncementListener$Stub;
.source "RadioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/hardware/radio/RadioManager;->addAnnouncementListener(Ljava/util/concurrent/Executor;Ljava/util/Set;Landroid/hardware/radio/Announcement$OnListUpdatedListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/hardware/radio/RadioManager;

.field final synthetic blacklist val$executor:Ljava/util/concurrent/Executor;

.field final synthetic blacklist val$listener:Landroid/hardware/radio/Announcement$OnListUpdatedListener;


# direct methods
.method constructor blacklist <init>(Landroid/hardware/radio/RadioManager;Ljava/util/concurrent/Executor;Landroid/hardware/radio/Announcement$OnListUpdatedListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    iput-object p1, p0, Landroid/hardware/radio/RadioManager$1;->this$0:Landroid/hardware/radio/RadioManager;

    iput-object p2, p0, Landroid/hardware/radio/RadioManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Landroid/hardware/radio/RadioManager$1;->val$listener:Landroid/hardware/radio/Announcement$OnListUpdatedListener;

    invoke-direct {p0}, Landroid/hardware/radio/IAnnouncementListener$Stub;-><init>()V

    return-void
.end method

.method static synthetic blacklist lambda$onListUpdated$0(Landroid/hardware/radio/Announcement$OnListUpdatedListener;Ljava/util/List;)V
    .locals 0

    invoke-interface {p0, p1}, Landroid/hardware/radio/Announcement$OnListUpdatedListener;->onListUpdated(Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method public blacklist onListUpdated(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/hardware/radio/Announcement;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Landroid/hardware/radio/RadioManager$1;->val$executor:Ljava/util/concurrent/Executor;

    iget-object v1, p0, Landroid/hardware/radio/RadioManager$1;->val$listener:Landroid/hardware/radio/Announcement$OnListUpdatedListener;

    new-instance v2, Landroid/hardware/radio/RadioManager$1$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1, p1}, Landroid/hardware/radio/RadioManager$1$$ExternalSyntheticLambda0;-><init>(Landroid/hardware/radio/Announcement$OnListUpdatedListener;Ljava/util/List;)V

    invoke-interface {v0, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
