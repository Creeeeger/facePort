.class public Lcom/samsung/android/settings/actions/ActionData;
.super Ljava/lang/Object;
.source "ActionData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/actions/ActionData$InvalidActionDataException;,
        Lcom/samsung/android/settings/actions/ActionData$Builder;
    }
.end annotation


# instance fields
.field private final mActionType:I

.field private final mEntries:Ljava/lang/String;

.field private final mEntryValues:Ljava/lang/String;

.field private final mFragmentClassName:Ljava/lang/String;

.field private final mIconResource:I

.field private final mKey:Ljava/lang/String;

.field private final mKeywords:Ljava/lang/String;

.field private final mPayload:Lcom/samsung/android/settings/actions/LaunchPayload;

.field private final mPreferenceController:Ljava/lang/String;

.field private final mRecoverable:Z

.field private final mRestoreKey:Ljava/lang/String;

.field private final mScreenTitle:Ljava/lang/CharSequence;

.field private final mSummary:Ljava/lang/String;

.field private final mTargetFragment:Ljava/lang/String;

.field private final mTitle:Ljava/lang/String;

.field private final mUri:Landroid/net/Uri;


# direct methods
.method private constructor <init>(Lcom/samsung/android/settings/actions/ActionData$Builder;)V
    .locals 1

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    invoke-static {p1}, Lcom/samsung/android/settings/actions/ActionData$Builder;->-$$Nest$fgetmKey(Lcom/samsung/android/settings/actions/ActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/actions/ActionData;->mKey:Ljava/lang/String;

    .line 167
    invoke-static {p1}, Lcom/samsung/android/settings/actions/ActionData$Builder;->-$$Nest$fgetmTitle(Lcom/samsung/android/settings/actions/ActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/actions/ActionData;->mTitle:Ljava/lang/String;

    .line 168
    invoke-static {p1}, Lcom/samsung/android/settings/actions/ActionData$Builder;->-$$Nest$fgetmSummary(Lcom/samsung/android/settings/actions/ActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/actions/ActionData;->mSummary:Ljava/lang/String;

    .line 169
    invoke-static {p1}, Lcom/samsung/android/settings/actions/ActionData$Builder;->-$$Nest$fgetmScreenTitle(Lcom/samsung/android/settings/actions/ActionData$Builder;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/actions/ActionData;->mScreenTitle:Ljava/lang/CharSequence;

    .line 170
    invoke-static {p1}, Lcom/samsung/android/settings/actions/ActionData$Builder;->-$$Nest$fgetmEntries(Lcom/samsung/android/settings/actions/ActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/actions/ActionData;->mEntries:Ljava/lang/String;

    .line 171
    invoke-static {p1}, Lcom/samsung/android/settings/actions/ActionData$Builder;->-$$Nest$fgetmEntryValues(Lcom/samsung/android/settings/actions/ActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/actions/ActionData;->mEntryValues:Ljava/lang/String;

    .line 172
    invoke-static {p1}, Lcom/samsung/android/settings/actions/ActionData$Builder;->-$$Nest$fgetmKeywords(Lcom/samsung/android/settings/actions/ActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/actions/ActionData;->mKeywords:Ljava/lang/String;

    .line 173
    invoke-static {p1}, Lcom/samsung/android/settings/actions/ActionData$Builder;->-$$Nest$fgetmIconResource(Lcom/samsung/android/settings/actions/ActionData$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/actions/ActionData;->mIconResource:I

    .line 174
    invoke-static {p1}, Lcom/samsung/android/settings/actions/ActionData$Builder;->-$$Nest$fgetmFragmentClassName(Lcom/samsung/android/settings/actions/ActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/actions/ActionData;->mFragmentClassName:Ljava/lang/String;

    .line 175
    invoke-static {p1}, Lcom/samsung/android/settings/actions/ActionData$Builder;->-$$Nest$fgetmUri(Lcom/samsung/android/settings/actions/ActionData$Builder;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/actions/ActionData;->mUri:Landroid/net/Uri;

    .line 176
    invoke-static {p1}, Lcom/samsung/android/settings/actions/ActionData$Builder;->-$$Nest$fgetmPrefControllerClassName(Lcom/samsung/android/settings/actions/ActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/actions/ActionData;->mPreferenceController:Ljava/lang/String;

    .line 177
    invoke-static {p1}, Lcom/samsung/android/settings/actions/ActionData$Builder;->-$$Nest$fgetmActionType(Lcom/samsung/android/settings/actions/ActionData$Builder;)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/settings/actions/ActionData;->mActionType:I

    .line 178
    invoke-static {p1}, Lcom/samsung/android/settings/actions/ActionData$Builder;->-$$Nest$fgetmRecoverable(Lcom/samsung/android/settings/actions/ActionData$Builder;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/settings/actions/ActionData;->mRecoverable:Z

    .line 179
    invoke-static {p1}, Lcom/samsung/android/settings/actions/ActionData$Builder;->-$$Nest$fgetmRestoreKey(Lcom/samsung/android/settings/actions/ActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/actions/ActionData;->mRestoreKey:Ljava/lang/String;

    .line 180
    invoke-static {p1}, Lcom/samsung/android/settings/actions/ActionData$Builder;->-$$Nest$fgetmTargetFragment(Lcom/samsung/android/settings/actions/ActionData$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/settings/actions/ActionData;->mTargetFragment:Ljava/lang/String;

    .line 181
    invoke-static {p1}, Lcom/samsung/android/settings/actions/ActionData$Builder;->-$$Nest$fgetmPayload(Lcom/samsung/android/settings/actions/ActionData$Builder;)Lcom/samsung/android/settings/actions/LaunchPayload;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/actions/ActionData;->mPayload:Lcom/samsung/android/settings/actions/LaunchPayload;

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/settings/actions/ActionData$Builder;Lcom/samsung/android/settings/actions/ActionData-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/actions/ActionData;-><init>(Lcom/samsung/android/settings/actions/ActionData$Builder;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 191
    instance-of v0, p1, Lcom/samsung/android/settings/actions/ActionData;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 195
    :cond_0
    check-cast p1, Lcom/samsung/android/settings/actions/ActionData;

    .line 196
    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionData;->mKey:Ljava/lang/String;

    iget-object p1, p1, Lcom/samsung/android/settings/actions/ActionData;->mKey:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public getActionType()I
    .locals 0

    .line 146
    iget p0, p0, Lcom/samsung/android/settings/actions/ActionData;->mActionType:I

    return p0
.end method

.method public getFragmentClassName()Ljava/lang/String;
    .locals 0

    .line 134
    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionData;->mFragmentClassName:Ljava/lang/String;

    return-object p0
.end method

.method public getIconResource()I
    .locals 0

    .line 130
    iget p0, p0, Lcom/samsung/android/settings/actions/ActionData;->mIconResource:I

    return p0
.end method

.method public getKey()Ljava/lang/String;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionData;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public getKeywords()Ljava/lang/String;
    .locals 0

    .line 126
    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionData;->mKeywords:Ljava/lang/String;

    return-object p0
.end method

.method public getPayload()[B
    .locals 0

    .line 162
    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionData;->mPayload:Lcom/samsung/android/settings/actions/LaunchPayload;

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/samsung/android/settings/actions/ParcelableUtil;->marshall(Landroid/os/Parcelable;)[B

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getPreferenceController()Ljava/lang/String;
    .locals 0

    .line 142
    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionData;->mPreferenceController:Ljava/lang/String;

    return-object p0
.end method

.method public getRestoreKey()Ljava/lang/String;
    .locals 0

    .line 154
    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionData;->mRestoreKey:Ljava/lang/String;

    return-object p0
.end method

.method public getScreenTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 114
    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionData;->mScreenTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 0

    .line 110
    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionData;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method public getTargetFragment()Ljava/lang/String;
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionData;->mTargetFragment:Ljava/lang/String;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionData;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 0

    .line 186
    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionData;->mKey:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    return p0
.end method

.method public isRecoverable()Z
    .locals 0

    .line 150
    iget-boolean p0, p0, Lcom/samsung/android/settings/actions/ActionData;->mRecoverable:Z

    return p0
.end method
