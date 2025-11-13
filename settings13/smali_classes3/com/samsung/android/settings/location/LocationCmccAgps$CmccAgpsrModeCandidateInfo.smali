.class Lcom/samsung/android/settings/location/LocationCmccAgps$CmccAgpsrModeCandidateInfo;
.super Lcom/android/settingslib/widget/CandidateInfo;
.source "LocationCmccAgps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/location/LocationCmccAgps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CmccAgpsrModeCandidateInfo"
.end annotation


# instance fields
.field private final mKey:Ljava/lang/String;

.field private final mLabel:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Ljava/lang/String;Z)V
    .locals 0

    .line 133
    invoke-direct {p0, p3}, Lcom/android/settingslib/widget/CandidateInfo;-><init>(Z)V

    .line 134
    iput-object p1, p0, Lcom/samsung/android/settings/location/LocationCmccAgps$CmccAgpsrModeCandidateInfo;->mLabel:Ljava/lang/CharSequence;

    .line 135
    iput-object p2, p0, Lcom/samsung/android/settings/location/LocationCmccAgps$CmccAgpsrModeCandidateInfo;->mKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    .line 150
    iget-object p0, p0, Lcom/samsung/android/settings/location/LocationCmccAgps$CmccAgpsrModeCandidateInfo;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public loadIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public loadLabel()Ljava/lang/CharSequence;
    .locals 0

    .line 140
    iget-object p0, p0, Lcom/samsung/android/settings/location/LocationCmccAgps$CmccAgpsrModeCandidateInfo;->mLabel:Ljava/lang/CharSequence;

    return-object p0
.end method
