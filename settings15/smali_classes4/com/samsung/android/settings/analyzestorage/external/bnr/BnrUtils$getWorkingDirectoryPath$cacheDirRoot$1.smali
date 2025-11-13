.class public final synthetic Lcom/samsung/android/settings/analyzestorage/external/bnr/BnrUtils$getWorkingDirectoryPath$cacheDirRoot$1;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final INSTANCE:Lcom/samsung/android/settings/analyzestorage/external/bnr/BnrUtils$getWorkingDirectoryPath$cacheDirRoot$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/external/bnr/BnrUtils$getWorkingDirectoryPath$cacheDirRoot$1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/settings/analyzestorage/external/bnr/BnrUtils$getWorkingDirectoryPath$cacheDirRoot$1;->INSTANCE:Lcom/samsung/android/settings/analyzestorage/external/bnr/BnrUtils$getWorkingDirectoryPath$cacheDirRoot$1;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/io/File;

    const-string/jumbo p0, "p0"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
