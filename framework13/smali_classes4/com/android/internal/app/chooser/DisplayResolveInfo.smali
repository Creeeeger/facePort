.class public Lcom/android/internal/app/chooser/DisplayResolveInfo;
.super Ljava/lang/Object;
.source "DisplayResolveInfo.java"

# interfaces
.implements Lcom/android/internal/app/chooser/TargetInfo;
.implements Landroid/os/Parcelable;


# static fields
.field public static final blacklist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/internal/app/chooser/DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private blacklist mDisplayIcon:Landroid/graphics/drawable/Drawable;

.field private blacklist mDisplayLabel:Ljava/lang/CharSequence;

.field private blacklist mExtendedInfo:Ljava/lang/CharSequence;

.field private blacklist mIsSkipFixUris:Z

.field private blacklist mIsSuspended:Z

.field private blacklist mPinned:Z

.field private final blacklist mResolveInfo:Landroid/content/pm/ResolveInfo;

.field private blacklist mResolveInfoPresentationGetter:Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

.field private final blacklist mResolvedIntent:Landroid/content/Intent;

.field private blacklist mSemIsNonePackageItem:Z

.field private blacklist mSemItemKey:Ljava/lang/String;

.field private final blacklist mSourceIntents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 247
    new-instance v0, Lcom/android/internal/app/chooser/DisplayResolveInfo$1;

    invoke-direct {v0}, Lcom/android/internal/app/chooser/DisplayResolveInfo$1;-><init>()V

    sput-object v0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V
    .locals 7
    .param p1, "originalIntent"    # Landroid/content/Intent;
    .param p2, "pri"    # Landroid/content/pm/ResolveInfo;
    .param p3, "pOrigIntent"    # Landroid/content/Intent;
    .param p4, "resolveInfoPresentationGetter"    # Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    .line 80
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V

    .line 82
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V
    .locals 6
    .param p1, "originalIntent"    # Landroid/content/Intent;
    .param p2, "pri"    # Landroid/content/pm/ResolveInfo;
    .param p3, "pLabel"    # Ljava/lang/CharSequence;
    .param p4, "pInfo"    # Ljava/lang/CharSequence;
    .param p5, "resolvedIntent"    # Landroid/content/Intent;
    .param p6, "resolveInfoPresentationGetter"    # Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    .line 57
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mPinned:Z

    .line 60
    iput-boolean v1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mIsSkipFixUris:Z

    .line 64
    iput-boolean v1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mSemIsNonePackageItem:Z

    .line 65
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mSemItemKey:Ljava/lang/String;

    .line 87
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    iput-object p2, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 89
    iput-object p3, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 90
    iput-object p4, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    .line 91
    iput-object p6, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfoPresentationGetter:Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    .line 93
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 94
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x3000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 96
    iget-object v2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 97
    .local v2, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 99
    iget-object v3, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x40000000    # 2.0f

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    iput-boolean v1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mIsSuspended:Z

    .line 101
    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    .line 102
    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    .line 57
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mPinned:Z

    .line 60
    iput-boolean v1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mIsSkipFixUris:Z

    .line 64
    iput-boolean v1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mSemIsNonePackageItem:Z

    .line 65
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mSemItemKey:Ljava/lang/String;

    .line 259
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 260
    invoke-virtual {p1}, Landroid/os/Parcel;->readCharSequence()Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    .line 261
    const-class v2, Landroid/content/Intent;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iput-object v2, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    .line 262
    sget-object v2, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 263
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mIsSuspended:Z

    .line 264
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mPinned:Z

    .line 265
    const-class v0, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p1, v1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 266
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Lcom/android/internal/app/chooser/DisplayResolveInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor blacklist <init>(Lcom/android/internal/app/chooser/DisplayResolveInfo;)V
    .locals 2
    .param p1, "other"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;

    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    .line 57
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mPinned:Z

    .line 60
    iput-boolean v1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mIsSkipFixUris:Z

    .line 64
    iput-boolean v1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mSemIsNonePackageItem:Z

    .line 65
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mSemItemKey:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getAllSourceIntents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 118
    iget-object v0, p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 119
    iget-object v0, p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 120
    iget-object v0, p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    .line 121
    iget-object v0, p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    .line 122
    iget-object v0, p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    .line 123
    iget-object v0, p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfoPresentationGetter:Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfoPresentationGetter:Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    .line 124
    return-void
.end method

.method private constructor blacklist <init>(Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/content/Intent;ILcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V
    .locals 2
    .param p1, "other"    # Lcom/android/internal/app/chooser/DisplayResolveInfo;
    .param p2, "fillInIntent"    # Landroid/content/Intent;
    .param p3, "flags"    # I
    .param p4, "resolveInfoPresentationGetter"    # Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    .line 57
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mPinned:Z

    .line 60
    iput-boolean v1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mIsSkipFixUris:Z

    .line 64
    iput-boolean v1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mSemIsNonePackageItem:Z

    .line 65
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mSemItemKey:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;->getAllSourceIntents()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 107
    iget-object v0, p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 108
    iget-object v0, p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 109
    iget-object v0, p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    .line 110
    iget-object v0, p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    .line 111
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    .line 112
    invoke-virtual {v0, p2, p3}, Landroid/content/Intent;->fillIn(Landroid/content/Intent;I)I

    .line 113
    iput-object p4, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfoPresentationGetter:Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    .line 114
    return-void
.end method

.method public constructor blacklist <init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V
    .locals 1
    .param p1, "pLabel"    # Ljava/lang/CharSequence;
    .param p2, "displayIcon"    # Landroid/graphics/drawable/Drawable;
    .param p3, "itemKey"    # Ljava/lang/String;

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    .line 57
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mPinned:Z

    .line 60
    iput-boolean v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mIsSkipFixUris:Z

    .line 64
    iput-boolean v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mSemIsNonePackageItem:Z

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mSemItemKey:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 69
    iput-object p1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 70
    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    .line 71
    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    .line 72
    iput-object p2, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    .line 73
    iput-object p3, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mSemItemKey:Ljava/lang/String;

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mSemIsNonePackageItem:Z

    .line 75
    return-void
.end method


# virtual methods
.method public blacklist addAlternateSourceIntent(Landroid/content/Intent;)V
    .locals 1
    .param p1, "alt"    # Landroid/content/Intent;

    .line 165
    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    return-void
.end method

.method public blacklist cloneFilledIn(Landroid/content/Intent;I)Lcom/android/internal/app/chooser/TargetInfo;
    .locals 2
    .param p1, "fillInIntent"    # Landroid/content/Intent;
    .param p2, "flags"    # I

    .line 156
    new-instance v0, Lcom/android/internal/app/chooser/DisplayResolveInfo;

    iget-object v1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfoPresentationGetter:Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/internal/app/chooser/DisplayResolveInfo;-><init>(Lcom/android/internal/app/chooser/DisplayResolveInfo;Landroid/content/Intent;ILcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;)V

    return-object v0
.end method

.method public whitelist describeContents()I
    .locals 1

    .line 233
    const/4 v0, 0x0

    return v0
.end method

.method public blacklist getAllSourceIntents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    return-object v0
.end method

.method public blacklist getDisplayIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .line 151
    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public blacklist getDisplayLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfoPresentationGetter:Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    if-eqz v0, :cond_0

    .line 132
    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->getLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 133
    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfoPresentationGetter:Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverListAdapter$ResolveInfoPresentationGetter;->getSubLabel()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getExtendedInfo()Ljava/lang/CharSequence;
    .locals 1

    .line 177
    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public blacklist getResolveInfo()Landroid/content/pm/ResolveInfo;
    .locals 1

    .line 127
    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method

.method public blacklist getResolvedComponentName()Landroid/content/ComponentName;
    .locals 3

    .line 186
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public blacklist getResolvedIntent()Landroid/content/Intent;
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public blacklist hasDisplayIcon()Z
    .locals 1

    .line 173
    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist hasDisplayLabel()Z
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist isPinned()Z
    .locals 1

    .line 224
    iget-boolean v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mPinned:Z

    return v0
.end method

.method public blacklist isSuspended()Z
    .locals 1

    .line 219
    iget-boolean v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mIsSuspended:Z

    return v0
.end method

.method public blacklist semGetBadgeContentDescription()Ljava/lang/CharSequence;
    .locals 1

    .line 281
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist semGetBadgeIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 277
    const/4 v0, 0x0

    return-object v0
.end method

.method public blacklist semGetItemKey()Ljava/lang/String;
    .locals 1

    .line 273
    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mSemItemKey:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist semIsNonePackageItem()Z
    .locals 1

    .line 269
    iget-boolean v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mSemIsNonePackageItem:Z

    return v0
.end method

.method public blacklist setDisplayIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .line 169
    iput-object p1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayIcon:Landroid/graphics/drawable/Drawable;

    .line 170
    return-void
.end method

.method public blacklist setDisplayLabel(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "displayLabel"    # Ljava/lang/CharSequence;

    .line 143
    iput-object p1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    .line 144
    return-void
.end method

.method public blacklist setExtendedInfo(Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "extendedInfo"    # Ljava/lang/CharSequence;

    .line 147
    iput-object p1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    .line 148
    return-void
.end method

.method public blacklist setPinned(Z)V
    .locals 0
    .param p1, "pinned"    # Z

    .line 228
    iput-boolean p1, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mPinned:Z

    .line 229
    return-void
.end method

.method public blacklist setSkipFixUris(Z)V
    .locals 1
    .param p1, "skipFixUris"    # Z

    .line 288
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mIsSkipFixUris:Z

    .line 289
    return-void
.end method

.method public blacklist start(Landroid/app/Activity;Landroid/os/Bundle;)Z
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/os/Bundle;

    .line 192
    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist startAsCaller(Lcom/android/internal/app/ResolverActivity;Landroid/os/Bundle;I)Z
    .locals 2
    .param p1, "activity"    # Lcom/android/internal/app/ResolverActivity;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "userId"    # I

    .line 199
    iget-boolean v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mIsSkipFixUris:Z

    if-nez v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    invoke-static {v0, p3}, Lcom/android/internal/app/chooser/TargetInfo;->prepareIntentForCrossProfileLaunch(Landroid/content/Intent;I)V

    .line 203
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1, p3}, Lcom/android/internal/app/ResolverActivity;->startActivityAsCaller(Landroid/content/Intent;Landroid/os/Bundle;ZI)V

    .line 204
    const/4 v0, 0x1

    return v0
.end method

.method public blacklist startAsUser(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/UserHandle;)Z
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "options"    # Landroid/os/Bundle;
    .param p3, "user"    # Landroid/os/UserHandle;

    .line 210
    iget-boolean v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mIsSkipFixUris:Z

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/internal/app/chooser/TargetInfo;->prepareIntentForCrossProfileLaunch(Landroid/content/Intent;I)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0, p2, p3}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 215
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 238
    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mDisplayLabel:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 239
    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mExtendedInfo:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeCharSequence(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolvedIntent:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 241
    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mSourceIntents:Ljava/util/List;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 242
    iget-boolean v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mIsSuspended:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 243
    iget-boolean v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mPinned:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 244
    iget-object v0, p0, Lcom/android/internal/app/chooser/DisplayResolveInfo;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 245
    return-void
.end method
