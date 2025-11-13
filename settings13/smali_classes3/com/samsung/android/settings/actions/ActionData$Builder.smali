.class Lcom/samsung/android/settings/actions/ActionData$Builder;
.super Ljava/lang/Object;
.source "ActionData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/actions/ActionData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private mActionType:I

.field private mEntries:Ljava/lang/String;

.field private mEntryValues:Ljava/lang/String;

.field private mFragmentClassName:Ljava/lang/String;

.field private mIconResource:I

.field private mKey:Ljava/lang/String;

.field private mKeywords:Ljava/lang/String;

.field private mPayload:Lcom/samsung/android/settings/actions/LaunchPayload;

.field private mPrefControllerClassName:Ljava/lang/String;

.field private mRecoverable:Z

.field private mRestoreKey:Ljava/lang/String;

.field private mScreenTitle:Ljava/lang/CharSequence;

.field private mSummary:Ljava/lang/String;

.field private mTargetFragment:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static bridge synthetic -$$Nest$fgetmActionType(Lcom/samsung/android/settings/actions/ActionData$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/actions/ActionData$Builder;->mActionType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmEntries(Lcom/samsung/android/settings/actions/ActionData$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionData$Builder;->mEntries:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEntryValues(Lcom/samsung/android/settings/actions/ActionData$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionData$Builder;->mEntryValues:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFragmentClassName(Lcom/samsung/android/settings/actions/ActionData$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionData$Builder;->mFragmentClassName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIconResource(Lcom/samsung/android/settings/actions/ActionData$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/actions/ActionData$Builder;->mIconResource:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmKey(Lcom/samsung/android/settings/actions/ActionData$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionData$Builder;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmKeywords(Lcom/samsung/android/settings/actions/ActionData$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionData$Builder;->mKeywords:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPayload(Lcom/samsung/android/settings/actions/ActionData$Builder;)Lcom/samsung/android/settings/actions/LaunchPayload;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionData$Builder;->mPayload:Lcom/samsung/android/settings/actions/LaunchPayload;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPrefControllerClassName(Lcom/samsung/android/settings/actions/ActionData$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionData$Builder;->mPrefControllerClassName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRecoverable(Lcom/samsung/android/settings/actions/ActionData$Builder;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/settings/actions/ActionData$Builder;->mRecoverable:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmRestoreKey(Lcom/samsung/android/settings/actions/ActionData$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionData$Builder;->mRestoreKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmScreenTitle(Lcom/samsung/android/settings/actions/ActionData$Builder;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionData$Builder;->mScreenTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSummary(Lcom/samsung/android/settings/actions/ActionData$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionData$Builder;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTargetFragment(Lcom/samsung/android/settings/actions/ActionData$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionData$Builder;->mTargetFragment:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTitle(Lcom/samsung/android/settings/actions/ActionData$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionData$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUri(Lcom/samsung/android/settings/actions/ActionData$Builder;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionData$Builder;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method constructor <init>()V
    .locals 0

    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Lcom/samsung/android/settings/actions/ActionData;
    .locals 3

    .line 313
    iget-object v0, p0, Lcom/samsung/android/settings/actions/ActionData$Builder;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/samsung/android/settings/actions/ActionData$Builder;->mTitle:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 323
    iget-object v0, p0, Lcom/samsung/android/settings/actions/ActionData$Builder;->mFragmentClassName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 329
    iget-object v0, p0, Lcom/samsung/android/settings/actions/ActionData$Builder;->mPrefControllerClassName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 333
    new-instance v0, Lcom/samsung/android/settings/actions/ActionData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/actions/ActionData;-><init>(Lcom/samsung/android/settings/actions/ActionData$Builder;Lcom/samsung/android/settings/actions/ActionData-IA;)V

    return-object v0

    .line 330
    :cond_0
    new-instance v0, Lcom/samsung/android/settings/actions/ActionData$InvalidActionDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Preference Controller cannot be empty : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/actions/ActionData$Builder;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", class name : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionData$Builder;->mFragmentClassName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/actions/ActionData$InvalidActionDataException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 314
    :cond_1
    new-instance v0, Lcom/samsung/android/settings/actions/ActionData$InvalidActionDataException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key cannot be empty : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/actions/ActionData$Builder;->mFragmentClassName:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/actions/ActionData$InvalidActionDataException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setActionType(I)Lcom/samsung/android/settings/actions/ActionData$Builder;
    .locals 0

    .line 288
    iput p1, p0, Lcom/samsung/android/settings/actions/ActionData$Builder;->mActionType:I

    return-object p0
.end method

.method public setFragmentName(Ljava/lang/String;)Lcom/samsung/android/settings/actions/ActionData$Builder;
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/samsung/android/settings/actions/ActionData$Builder;->mFragmentClassName:Ljava/lang/String;

    return-object p0
.end method

.method public setIcon(I)Lcom/samsung/android/settings/actions/ActionData$Builder;
    .locals 0

    .line 268
    iput p1, p0, Lcom/samsung/android/settings/actions/ActionData$Builder;->mIconResource:I

    return-object p0
.end method

.method public setKey(Ljava/lang/String;)Lcom/samsung/android/settings/actions/ActionData$Builder;
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/samsung/android/settings/actions/ActionData$Builder;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method public setKeywords(Ljava/lang/String;)Lcom/samsung/android/settings/actions/ActionData$Builder;
    .locals 0

    .line 263
    iput-object p1, p0, Lcom/samsung/android/settings/actions/ActionData$Builder;->mKeywords:Ljava/lang/String;

    return-object p0
.end method

.method public setPayload(Lcom/samsung/android/settings/actions/LaunchPayload;)Lcom/samsung/android/settings/actions/ActionData$Builder;
    .locals 0

    .line 308
    iput-object p1, p0, Lcom/samsung/android/settings/actions/ActionData$Builder;->mPayload:Lcom/samsung/android/settings/actions/LaunchPayload;

    return-object p0
.end method

.method public setPreferenceControllerClassName(Ljava/lang/String;)Lcom/samsung/android/settings/actions/ActionData$Builder;
    .locals 0

    .line 273
    iput-object p1, p0, Lcom/samsung/android/settings/actions/ActionData$Builder;->mPrefControllerClassName:Ljava/lang/String;

    return-object p0
.end method

.method public setRecoverable(Z)Lcom/samsung/android/settings/actions/ActionData$Builder;
    .locals 0

    .line 293
    iput-boolean p1, p0, Lcom/samsung/android/settings/actions/ActionData$Builder;->mRecoverable:Z

    return-object p0
.end method

.method public setRestoreKey(Ljava/lang/String;)Lcom/samsung/android/settings/actions/ActionData$Builder;
    .locals 0

    .line 298
    iput-object p1, p0, Lcom/samsung/android/settings/actions/ActionData$Builder;->mRestoreKey:Ljava/lang/String;

    return-object p0
.end method

.method public setScreenTitle(Ljava/lang/CharSequence;)Lcom/samsung/android/settings/actions/ActionData$Builder;
    .locals 0

    .line 248
    iput-object p1, p0, Lcom/samsung/android/settings/actions/ActionData$Builder;->mScreenTitle:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public setSummary(Ljava/lang/String;)Lcom/samsung/android/settings/actions/ActionData$Builder;
    .locals 0

    .line 243
    iput-object p1, p0, Lcom/samsung/android/settings/actions/ActionData$Builder;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method public setTargetFragment(Ljava/lang/String;)Lcom/samsung/android/settings/actions/ActionData$Builder;
    .locals 0

    .line 303
    iput-object p1, p0, Lcom/samsung/android/settings/actions/ActionData$Builder;->mTargetFragment:Ljava/lang/String;

    return-object p0
.end method

.method public setTitle(Ljava/lang/String;)Lcom/samsung/android/settings/actions/ActionData$Builder;
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/samsung/android/settings/actions/ActionData$Builder;->mTitle:Ljava/lang/String;

    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)Lcom/samsung/android/settings/actions/ActionData$Builder;
    .locals 0

    .line 283
    iput-object p1, p0, Lcom/samsung/android/settings/actions/ActionData$Builder;->mUri:Landroid/net/Uri;

    return-object p0
.end method
