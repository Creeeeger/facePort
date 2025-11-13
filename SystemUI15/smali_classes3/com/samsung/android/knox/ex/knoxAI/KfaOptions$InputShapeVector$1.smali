.class Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector$1;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector$1;->this$1:Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector;
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector;

    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector$1;->this$1:Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector;

    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector;->this$0:Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector;-><init>(Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector$1;->createFromParcel(Landroid/os/Parcel;)Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector;
    .locals 0

    new-array p0, p1, [Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector$1;->newArray(I)[Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector;

    move-result-object p0

    return-object p0
.end method
