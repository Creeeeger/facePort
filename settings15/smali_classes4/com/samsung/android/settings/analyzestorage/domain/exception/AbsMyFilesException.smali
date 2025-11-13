.class public abstract Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException;
.super Ljava/io/IOException;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;
    }
.end annotation


# instance fields
.field private final mDetailMessage:Ljava/lang/String;

.field private final mExtraMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected mType:Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;


# direct methods
.method public constructor <init>()V
    .locals 2

    sget-object v0, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;->ERROR_UNSUPPORTED_ARGS:Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException;->mExtraMap:Ljava/util/Map;

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException;->mType:Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException;->mDetailMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    sget-object p1, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;->ERROR_CLOUD_SIGN_IN_ALREADY_IN_PROGRESS:Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    const-string v0, ""

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException;->mExtraMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException;->mType:Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    iput-object v0, p0, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException;->mDetailMessage:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException;->checkValid()V

    return-void
.end method


# virtual methods
.method public abstract checkValid()V
.end method

.method public final getDetailMessage()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException;->mDetailMessage:Ljava/lang/String;

    return-object p0
.end method

.method public final getExceptionType()Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException;->mType:Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    return-object p0
.end method

.method public final getInt(I)I
    .locals 1

    const-string v0, "messageRes"

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException;->mExtraMap:Ljava/util/Map;

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "AbsMyFilesException{mType="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException;->mType:Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException$ErrorType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mDetailMessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/analyzestorage/domain/exception/AbsMyFilesException;->mDetailMessage:Ljava/lang/String;

    const-string v1, "\'}"

    invoke-static {v0, p0, v1}, Landroidx/activity/ComponentActivity$1$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
