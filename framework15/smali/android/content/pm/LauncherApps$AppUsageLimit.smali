.class public final Landroid/content/pm/LauncherApps$AppUsageLimit;
.super Ljava/lang/Object;
.source "LauncherApps.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/LauncherApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppUsageLimit"
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/LauncherApps$AppUsageLimit;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mTotalUsageLimit:J

.field private final blacklist mUsageRemaining:J


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/content/pm/LauncherApps$AppUsageLimit$1;

    invoke-direct {v0}, Landroid/content/pm/LauncherApps$AppUsageLimit$1;-><init>()V

    sput-object v0, Landroid/content/pm/LauncherApps$AppUsageLimit;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(JJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Landroid/content/pm/LauncherApps$AppUsageLimit;->mTotalUsageLimit:J

    iput-wide p3, p0, Landroid/content/pm/LauncherApps$AppUsageLimit;->mUsageRemaining:J

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/LauncherApps$AppUsageLimit;->mTotalUsageLimit:J

    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/content/pm/LauncherApps$AppUsageLimit;->mUsageRemaining:J

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/LauncherApps$AppUsageLimit-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/pm/LauncherApps$AppUsageLimit;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getTotalUsageLimit()J
    .locals 2

    iget-wide v0, p0, Landroid/content/pm/LauncherApps$AppUsageLimit;->mTotalUsageLimit:J

    return-wide v0
.end method

.method public whitelist getUsageRemaining()J
    .locals 2

    iget-wide v0, p0, Landroid/content/pm/LauncherApps$AppUsageLimit;->mUsageRemaining:J

    return-wide v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroid/content/pm/LauncherApps$AppUsageLimit;->mTotalUsageLimit:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    iget-wide v0, p0, Landroid/content/pm/LauncherApps$AppUsageLimit;->mUsageRemaining:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
