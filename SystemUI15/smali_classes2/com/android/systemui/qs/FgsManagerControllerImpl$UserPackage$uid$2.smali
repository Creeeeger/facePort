.class final Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage$uid$2;
.super Lkotlin/jvm/internal/Lambda;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

.field final synthetic this$1:Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/FgsManagerControllerImpl;Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage$uid$2;->this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage$uid$2;->this$1:Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage$uid$2;->this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    iget-object v0, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->packageManager:Landroid/content/pm/PackageManager;

    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage$uid$2;->this$1:Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;

    iget-object v1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->packageName:Ljava/lang/String;

    iget p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$UserPackage;->userId:I

    invoke-virtual {v0, v1, p0}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
