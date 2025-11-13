.class public final Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$dismiss$flush$1$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $it:Ljava/util/Set;

.field public final synthetic $key:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;Ljava/lang/String;Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$dismiss$flush$1$1;->this$0:Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;

    iput-object p2, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$dismiss$flush$1$1;->$key:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$dismiss$flush$1$1;->$it:Ljava/util/Set;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$dismiss$flush$1$1;->this$0:Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;

    iget-object v1, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$dismiss$flush$1$1;->$key:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$dismiss$flush$1$1;->$it:Ljava/util/Set;

    sget-object v2, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->Companion:Lcom/android/systemui/controls/controller/util/BadgeProviderImpl$Companion;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/controls/controller/util/BadgeProviderImpl;->putPackagesSet(Ljava/lang/String;Ljava/util/Set;)V

    return-void
.end method
