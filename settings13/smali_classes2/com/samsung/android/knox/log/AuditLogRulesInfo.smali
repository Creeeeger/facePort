.class public Lcom/samsung/android/knox/log/AuditLogRulesInfo;
.super Ljava/lang/Object;
.source "AuditLogRulesInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/samsung/android/knox/log/AuditLogRulesInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mGroupsRule:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mOutcomeRule:I

.field private mSeverityRule:I

.field private mUsersRule:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 107
    new-instance v0, Lcom/samsung/android/knox/log/AuditLogRulesInfo$1;

    invoke-direct {v0}, Lcom/samsung/android/knox/log/AuditLogRulesInfo$1;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    .line 35
    iput v0, p0, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->mSeverityRule:I

    const/4 v0, 0x2

    .line 36
    iput v0, p0, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->mOutcomeRule:I

    const/4 v0, 0x0

    .line 37
    iput-object v0, p0, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->mGroupsRule:Ljava/util/List;

    .line 38
    iput-object v0, p0, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->mUsersRule:Ljava/util/List;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 117
    invoke-direct {p0, p1}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->readFromParcel(Landroid/os/Parcel;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/samsung/android/knox/log/AuditLogRulesInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/knox/log/AuditLogRulesInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParcel(Landroid/os/Parcel;)V
    .locals 3

    .line 96
    const-class v0, Ljava/lang/Integer;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->mSeverityRule:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->mOutcomeRule:I

    .line 98
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->mGroupsRule:Ljava/util/List;

    .line 99
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->mUsersRule:Ljava/util/List;

    .line 101
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    invoke-virtual {p1, v1, p0}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 86
    iget p2, p0, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->mSeverityRule:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget p2, p0, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->mOutcomeRule:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-object p2, p0, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->mGroupsRule:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 89
    iget-object p0, p0, Lcom/samsung/android/knox/log/AuditLogRulesInfo;->mUsersRule:Ljava/util/List;

    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
