.class public Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;
.super Ljava/lang/Object;
.source "SecManagedProfileNetworkStatsSummaryLoader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mEnd:J

.field private mNetworkTemplate:Landroid/net/NetworkTemplate;

.field private mStart:J


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEnd(Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;->mEnd:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmNetworkTemplate(Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;)Landroid/net/NetworkTemplate;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStart(Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;)J
    .locals 2

    iget-wide v0, p0, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;->mStart:J

    return-wide v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public setEndTime(J)Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;
    .locals 0

    .line 71
    iput-wide p1, p0, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;->mEnd:J

    return-object p0
.end method

.method public setNetworkTemplate(Landroid/net/NetworkTemplate;)Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;
    .locals 0

    .line 79
    iput-object p1, p0, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;->mNetworkTemplate:Landroid/net/NetworkTemplate;

    return-object p0
.end method

.method public setStartTime(J)Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;
    .locals 0

    .line 66
    iput-wide p1, p0, Lcom/samsung/android/settings/knox/SecManagedProfileNetworkStatsSummaryLoader$Builder;->mStart:J

    return-object p0
.end method
