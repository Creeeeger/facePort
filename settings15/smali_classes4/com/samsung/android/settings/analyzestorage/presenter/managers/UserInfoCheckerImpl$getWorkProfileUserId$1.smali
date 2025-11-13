.class public final Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoCheckerImpl$getWorkProfileUserId$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Consumer;


# static fields
.field public static final INSTANCE:Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoCheckerImpl$getWorkProfileUserId$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoCheckerImpl$getWorkProfileUserId$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoCheckerImpl$getWorkProfileUserId$1;->INSTANCE:Lcom/samsung/android/settings/analyzestorage/presenter/managers/UserInfoCheckerImpl$getWorkProfileUserId$1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Landroid/os/UserHandle;

    const-string p0, "e"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/UserHandle;->semGetIdentifier()I

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "getWorkProfileUserId userId : "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "UserInfoCheckerImpl"

    invoke-static {p1, p0}, Lcom/samsung/android/settings/analyzestorage/domain/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
