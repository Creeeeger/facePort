.class public final Landroid/app/search/SearchTarget;
.super Ljava/lang/Object;
.source "SearchTarget.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/search/SearchTarget$Builder;,
        Landroid/app/search/SearchTarget$SearchLayoutType;,
        Landroid/app/search/SearchTarget$SearchResultType;
    }
.end annotation


# static fields
.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/app/search/SearchTarget;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist LAYOUT_TYPE_ICON:Ljava/lang/String; = "icon"

.field public static final whitelist LAYOUT_TYPE_ICON_ROW:Ljava/lang/String; = "icon_row"

.field public static final whitelist LAYOUT_TYPE_SHORT_ICON_ROW:Ljava/lang/String; = "short_icon_row"

.field public static final whitelist RESULT_TYPE_APPLICATION:I = 0x1

.field public static final whitelist RESULT_TYPE_SHORTCUT:I = 0x2

.field public static final whitelist RESULT_TYPE_SLICE:I = 0x4

.field public static final whitelist RESULT_TYPE_WIDGETS:I = 0x8


# instance fields
.field private final blacklist mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

.field private final blacklist mExtras:Landroid/os/Bundle;

.field private final blacklist mHidden:Z

.field private final blacklist mId:Ljava/lang/String;

.field private final blacklist mLayoutType:Ljava/lang/String;

.field private final blacklist mPackageName:Ljava/lang/String;

.field private blacklist mParentId:Ljava/lang/String;

.field private final blacklist mResultType:I

.field private final blacklist mScore:F

.field private final blacklist mSearchAction:Landroid/app/search/SearchAction;

.field private final blacklist mShortcutInfo:Landroid/content/pm/ShortcutInfo;

.field private final blacklist mSliceUri:Landroid/net/Uri;

.field private final blacklist mUserHandle:Landroid/os/UserHandle;


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    new-instance v0, Landroid/app/search/SearchTarget$1;

    invoke-direct {v0}, Landroid/app/search/SearchTarget$1;-><init>()V

    sput-object v0, Landroid/app/search/SearchTarget;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FZLjava/lang/String;Landroid/os/UserHandle;Landroid/app/search/SearchAction;Landroid/content/pm/ShortcutInfo;Landroid/net/Uri;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/app/search/SearchTarget;->mResultType:I

    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/search/SearchTarget;->mLayoutType:Ljava/lang/String;

    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/search/SearchTarget;->mId:Ljava/lang/String;

    iput-object p4, p0, Landroid/app/search/SearchTarget;->mParentId:Ljava/lang/String;

    iput p5, p0, Landroid/app/search/SearchTarget;->mScore:F

    iput-boolean p6, p0, Landroid/app/search/SearchTarget;->mHidden:Z

    invoke-static {p7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/app/search/SearchTarget;->mPackageName:Ljava/lang/String;

    invoke-static {p8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    iput-object v0, p0, Landroid/app/search/SearchTarget;->mUserHandle:Landroid/os/UserHandle;

    iput-object p9, p0, Landroid/app/search/SearchTarget;->mSearchAction:Landroid/app/search/SearchAction;

    iput-object p10, p0, Landroid/app/search/SearchTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    iput-object p12, p0, Landroid/app/search/SearchTarget;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    iput-object p11, p0, Landroid/app/search/SearchTarget;->mSliceUri:Landroid/net/Uri;

    if-eqz p13, :cond_0

    move-object v0, p13

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    :goto_0
    iput-object v0, p0, Landroid/app/search/SearchTarget;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FZLjava/lang/String;Landroid/os/UserHandle;Landroid/app/search/SearchAction;Landroid/content/pm/ShortcutInfo;Landroid/net/Uri;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;Landroid/app/search/SearchTarget-IA;)V
    .locals 0

    invoke-direct/range {p0 .. p13}, Landroid/app/search/SearchTarget;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;FZLjava/lang/String;Landroid/os/UserHandle;Landroid/app/search/SearchAction;Landroid/content/pm/ShortcutInfo;Landroid/net/Uri;Landroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/search/SearchTarget;->mResultType:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/search/SearchTarget;->mLayoutType:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/search/SearchTarget;->mId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/search/SearchTarget;->mParentId:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Landroid/app/search/SearchTarget;->mScore:F

    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Landroid/app/search/SearchTarget;->mHidden:Z

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/app/search/SearchTarget;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/search/SearchTarget;->mUserHandle:Landroid/os/UserHandle;

    sget-object v0, Landroid/app/search/SearchAction;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/search/SearchAction;

    iput-object v0, p0, Landroid/app/search/SearchTarget;->mSearchAction:Landroid/app/search/SearchAction;

    sget-object v0, Landroid/content/pm/ShortcutInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutInfo;

    iput-object v0, p0, Landroid/app/search/SearchTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    sget-object v0, Landroid/appwidget/AppWidgetProviderInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/appwidget/AppWidgetProviderInfo;

    iput-object v0, p0, Landroid/app/search/SearchTarget;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    sget-object v0, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readTypedObject(Landroid/os/Parcelable$Creator;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    iput-object v0, p0, Landroid/app/search/SearchTarget;->mSliceUri:Landroid/net/Uri;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/app/search/SearchTarget;->mExtras:Landroid/os/Bundle;

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/app/search/SearchTarget-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/app/search/SearchTarget;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getAppWidgetProviderInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 1

    iget-object v0, p0, Landroid/app/search/SearchTarget;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    return-object v0
.end method

.method public whitelist getExtras()Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Landroid/app/search/SearchTarget;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public whitelist getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/search/SearchTarget;->mId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getLayoutType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/search/SearchTarget;->mLayoutType:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getPackageName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/search/SearchTarget;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getParentId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/app/search/SearchTarget;->mParentId:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getResultType()I
    .locals 1

    iget v0, p0, Landroid/app/search/SearchTarget;->mResultType:I

    return v0
.end method

.method public whitelist getScore()F
    .locals 1

    iget v0, p0, Landroid/app/search/SearchTarget;->mScore:F

    return v0
.end method

.method public whitelist getSearchAction()Landroid/app/search/SearchAction;
    .locals 1

    iget-object v0, p0, Landroid/app/search/SearchTarget;->mSearchAction:Landroid/app/search/SearchAction;

    return-object v0
.end method

.method public whitelist getShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .locals 1

    iget-object v0, p0, Landroid/app/search/SearchTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    return-object v0
.end method

.method public whitelist getSliceUri()Landroid/net/Uri;
    .locals 1

    iget-object v0, p0, Landroid/app/search/SearchTarget;->mSliceUri:Landroid/net/Uri;

    return-object v0
.end method

.method public whitelist getUserHandle()Landroid/os/UserHandle;
    .locals 1

    iget-object v0, p0, Landroid/app/search/SearchTarget;->mUserHandle:Landroid/os/UserHandle;

    return-object v0
.end method

.method public whitelist isHidden()Z
    .locals 1

    iget-boolean v0, p0, Landroid/app/search/SearchTarget;->mHidden:Z

    return v0
.end method

.method public greylist shouldHide()Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Landroid/app/search/SearchTarget;->mHidden:Z

    return v0
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/app/search/SearchTarget;->mResultType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/search/SearchTarget;->mLayoutType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/search/SearchTarget;->mId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/search/SearchTarget;->mParentId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/app/search/SearchTarget;->mScore:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    iget-boolean v0, p0, Landroid/app/search/SearchTarget;->mHidden:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBoolean(Z)V

    iget-object v0, p0, Landroid/app/search/SearchTarget;->mPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Landroid/app/search/SearchTarget;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/app/search/SearchTarget;->mSearchAction:Landroid/app/search/SearchAction;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/search/SearchTarget;->mShortcutInfo:Landroid/content/pm/ShortcutInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/search/SearchTarget;->mAppWidgetProviderInfo:Landroid/appwidget/AppWidgetProviderInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/search/SearchTarget;->mSliceUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    iget-object v0, p0, Landroid/app/search/SearchTarget;->mExtras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
