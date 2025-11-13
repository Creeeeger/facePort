.class public Lcom/samsung/android/wifi/SemAbTestConfiguration$TestParam;
.super Ljava/lang/Object;
.source "SemAbTestConfiguration.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/wifi/SemAbTestConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TestParam"
.end annotation


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/wifi/SemAbTestConfiguration$TestParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public blacklist group:Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;

.field public blacklist name:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/wifi/SemAbTestConfiguration$TestParam$1;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemAbTestConfiguration$TestParam$1;-><init>()V

    sput-object v0, Lcom/samsung/android/wifi/SemAbTestConfiguration$TestParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;

    invoke-direct {v0}, Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration$TestParam;->group:Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TestParam{name=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration$TestParam;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", group="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration$TestParam;->group:Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration$TestParam;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/wifi/SemAbTestConfiguration$TestParam;->group:Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;

    invoke-static {p1, v0}, Lcom/samsung/android/wifi/SemAbTestConfiguration;->-$$Nest$smwriteGroup(Landroid/os/Parcel;Lcom/samsung/android/wifi/SemAbTestConfiguration$Group;)V

    return-void
.end method
