.class public final Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoCheckerImpl$getWorkProfileUserId$filteredList$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoCheckerImpl;


# direct methods
.method public constructor <init>(Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoCheckerImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoCheckerImpl$getWorkProfileUserId$filteredList$1;->this$0:Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoCheckerImpl;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 2

    check-cast p1, Landroid/os/UserHandle;

    const-string/jumbo v0, "user"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoCheckerImpl$getWorkProfileUserId$filteredList$1;->this$0:Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoCheckerImpl;

    invoke-virtual {p1}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result v1

    invoke-virtual {v0}, Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoCheckerImpl;->getMyUserId()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoCheckerImpl$getWorkProfileUserId$filteredList$1;->this$0:Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoCheckerImpl;

    invoke-virtual {p1}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Lcom/samsung/android/knox/SemPersonaManager;->isSecureFolderId(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoCheckerImpl$getWorkProfileUserId$filteredList$1;->this$0:Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoCheckerImpl;

    invoke-virtual {p1}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lcom/samsung/android/app/SemDualAppManager;->isDualAppId(I)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    :goto_1
    return p0
.end method
