.class public final Lcom/samsung/android/telecom/SemPhoneAccount;
.super Ljava/lang/Object;
.source "SemPhoneAccount.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/telecom/SemPhoneAccount$Builder;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/telecom/SemPhoneAccount;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String; = "SemPhoneAccount"


# instance fields
.field private final blacklist mAllowed:Z

.field private final blacklist mComponentName:Landroid/content/ComponentName;

.field private final blacklist mOrder:I

.field private final blacklist mPackageName:Ljava/lang/String;

.field private final blacklist mPhoneAccount:Landroid/telecom/PhoneAccount;

.field private final blacklist mSelfManaged:Z


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/telecom/SemPhoneAccount$1;

    invoke-direct {v0}, Lcom/samsung/android/telecom/SemPhoneAccount$1;-><init>()V

    sput-object v0, Lcom/samsung/android/telecom/SemPhoneAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/telecom/SemPhoneAccount;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    sget-object v0, Landroid/content/ComponentName;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/samsung/android/telecom/SemPhoneAccount;->mComponentName:Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Lcom/samsung/android/telecom/SemPhoneAccount;->mComponentName:Landroid/content/ComponentName;

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_1

    sget-object v0, Landroid/telecom/PhoneAccount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccount;

    iput-object v0, p0, Lcom/samsung/android/telecom/SemPhoneAccount;->mPhoneAccount:Landroid/telecom/PhoneAccount;

    goto :goto_1

    :cond_1
    iput-object v1, p0, Lcom/samsung/android/telecom/SemPhoneAccount;->mPhoneAccount:Landroid/telecom/PhoneAccount;

    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/samsung/android/telecom/SemPhoneAccount;->mOrder:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/telecom/SemPhoneAccount;->mSelfManaged:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/telecom/SemPhoneAccount;->mAllowed:Z

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/samsung/android/telecom/SemPhoneAccount-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/telecom/SemPhoneAccount;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/telecom/PhoneAccount;IZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/telecom/SemPhoneAccount;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/telecom/SemPhoneAccount;->mComponentName:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/samsung/android/telecom/SemPhoneAccount;->mPhoneAccount:Landroid/telecom/PhoneAccount;

    iput p4, p0, Lcom/samsung/android/telecom/SemPhoneAccount;->mOrder:I

    iput-boolean p5, p0, Lcom/samsung/android/telecom/SemPhoneAccount;->mSelfManaged:Z

    iput-boolean p6, p0, Lcom/samsung/android/telecom/SemPhoneAccount;->mAllowed:Z

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getComponentName()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/telecom/SemPhoneAccount;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public whitelist getOrder()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/telecom/SemPhoneAccount;->mOrder:I

    return v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/telecom/SemPhoneAccount;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPhoneAccount()Landroid/telecom/PhoneAccount;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/telecom/SemPhoneAccount;->mPhoneAccount:Landroid/telecom/PhoneAccount;

    return-object v0
.end method

.method public whitelist isAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/telecom/SemPhoneAccount;->mAllowed:Z

    return v0
.end method

.method public whitelist isSelfManaged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/android/telecom/SemPhoneAccount;->mSelfManaged:Z

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SemPhoneAccount { PackageName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/telecom/SemPhoneAccount;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / ComponentName : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/telecom/SemPhoneAccount;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / PhoneAccount : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/telecom/SemPhoneAccount;->mPhoneAccount:Landroid/telecom/PhoneAccount;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / Order : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/telecom/SemPhoneAccount;->mOrder:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / SelfManaged : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/telecom/SemPhoneAccount;->mSelfManaged:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " / Allowed : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/telecom/SemPhoneAccount;->mAllowed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/telecom/SemPhoneAccount;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/telecom/SemPhoneAccount;->mComponentName:Landroid/content/ComponentName;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/telecom/SemPhoneAccount;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0, p1, p2}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_0
    iget-object v0, p0, Lcom/samsung/android/telecom/SemPhoneAccount;->mPhoneAccount:Landroid/telecom/PhoneAccount;

    if-nez v0, :cond_1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Lcom/samsung/android/telecom/SemPhoneAccount;->mPhoneAccount:Landroid/telecom/PhoneAccount;

    invoke-virtual {v0, p1, p2}, Landroid/telecom/PhoneAccount;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_1
    iget v0, p0, Lcom/samsung/android/telecom/SemPhoneAccount;->mOrder:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean v0, p0, Lcom/samsung/android/telecom/SemPhoneAccount;->mSelfManaged:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-boolean v0, p0, Lcom/samsung/android/telecom/SemPhoneAccount;->mAllowed:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    return-void
.end method
