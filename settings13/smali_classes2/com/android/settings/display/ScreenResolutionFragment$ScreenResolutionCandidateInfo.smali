.class public Lcom/android/settings/display/ScreenResolutionFragment$ScreenResolutionCandidateInfo;
.super Lcom/android/settingslib/widget/CandidateInfo;
.source "ScreenResolutionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/ScreenResolutionFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenResolutionCandidateInfo"
.end annotation


# instance fields
.field private final mKey:Ljava/lang/String;

.field private final mLabel:Ljava/lang/CharSequence;

.field private final mSummary:Ljava/lang/CharSequence;


# direct methods
.method constructor <init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/String;Z)V
    .locals 0

    .line 212
    invoke-direct {p0, p4}, Lcom/android/settingslib/widget/CandidateInfo;-><init>(Z)V

    .line 213
    iput-object p1, p0, Lcom/android/settings/display/ScreenResolutionFragment$ScreenResolutionCandidateInfo;->mLabel:Ljava/lang/CharSequence;

    .line 214
    iput-object p2, p0, Lcom/android/settings/display/ScreenResolutionFragment$ScreenResolutionCandidateInfo;->mSummary:Ljava/lang/CharSequence;

    .line 215
    iput-object p3, p0, Lcom/android/settings/display/ScreenResolutionFragment$ScreenResolutionCandidateInfo;->mKey:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getKey()Ljava/lang/String;
    .locals 0

    .line 235
    iget-object p0, p0, Lcom/android/settings/display/ScreenResolutionFragment$ScreenResolutionCandidateInfo;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public loadIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public loadLabel()Ljava/lang/CharSequence;
    .locals 0

    .line 220
    iget-object p0, p0, Lcom/android/settings/display/ScreenResolutionFragment$ScreenResolutionCandidateInfo;->mLabel:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public loadSummary()Ljava/lang/CharSequence;
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/android/settings/display/ScreenResolutionFragment$ScreenResolutionCandidateInfo;->mSummary:Ljava/lang/CharSequence;

    return-object p0
.end method
