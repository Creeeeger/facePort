.class Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "InputShapeVector"
.end annotation


# instance fields
.field public final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector;",
            ">;"
        }
    .end annotation
.end field

.field public input:[I

.field public final synthetic this$0:Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;


# direct methods
.method public constructor <init>(Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;Landroid/os/Parcel;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector;->this$0:Lcom/samsung/android/knox/ex/knoxAI/KfaOptions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector$1;

    invoke-direct {p1, p0}, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector$1;-><init>(Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector;)V

    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector;->input:[I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final readFromParcel(Landroid/os/Parcel;)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector;->input:[I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->readIntArray([I)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IpShapeVec ["

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector;->input:[I

    invoke-static {p0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/ex/knoxAI/KfaOptions$InputShapeVector;->input:[I

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
