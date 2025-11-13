.class public final Landroid/content/pm/SuspendDialogInfo;
.super Ljava/lang/Object;
.source "SuspendDialogInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/pm/SuspendDialogInfo$Builder;,
        Landroid/content/pm/SuspendDialogInfo$ButtonAction;
    }
.end annotation


# static fields
.field public static final whitelist BUTTON_ACTION_MORE_DETAILS:I = 0x0

.field public static final whitelist BUTTON_ACTION_UNSUSPEND:I = 0x1

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/SuspendDialogInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist TAG:Ljava/lang/String;

.field private static final blacklist XML_ATTR_BUTTON_ACTION:Ljava/lang/String; = "buttonAction"

.field private static final blacklist XML_ATTR_BUTTON_TEXT:Ljava/lang/String; = "buttonText"

.field private static final blacklist XML_ATTR_BUTTON_TEXT_RES_ID:Ljava/lang/String; = "buttonTextResId"

.field private static final blacklist XML_ATTR_DIALOG_MESSAGE:Ljava/lang/String; = "dialogMessage"

.field private static final blacklist XML_ATTR_DIALOG_MESSAGE_RES_ID:Ljava/lang/String; = "dialogMessageResId"

.field private static final blacklist XML_ATTR_ICON_RES_ID:Ljava/lang/String; = "iconResId"

.field private static final blacklist XML_ATTR_TITLE:Ljava/lang/String; = "title"

.field private static final blacklist XML_ATTR_TITLE_RES_ID:Ljava/lang/String; = "titleResId"


# instance fields
.field private final blacklist mDialogMessage:Ljava/lang/String;

.field private final blacklist mDialogMessageResId:I

.field private final blacklist mIconResId:I

.field private final blacklist mNeutralButtonAction:I

.field private final blacklist mNeutralButtonText:Ljava/lang/String;

.field private final blacklist mNeutralButtonTextResId:I

.field private final blacklist mTitle:Ljava/lang/String;

.field private final blacklist mTitleResId:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    const-class v0, Landroid/content/pm/SuspendDialogInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/content/pm/SuspendDialogInfo;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/content/pm/SuspendDialogInfo$1;

    invoke-direct {v0}, Landroid/content/pm/SuspendDialogInfo$1;-><init>()V

    sput-object v0, Landroid/content/pm/SuspendDialogInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor blacklist <init>(Landroid/content/pm/SuspendDialogInfo$Builder;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/content/pm/SuspendDialogInfo$Builder;->-$$Nest$fgetmIconResId(Landroid/content/pm/SuspendDialogInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/SuspendDialogInfo;->mIconResId:I

    invoke-static {p1}, Landroid/content/pm/SuspendDialogInfo$Builder;->-$$Nest$fgetmTitleResId(Landroid/content/pm/SuspendDialogInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/SuspendDialogInfo;->mTitleResId:I

    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mTitleResId:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/content/pm/SuspendDialogInfo$Builder;->-$$Nest$fgetmTitle(Landroid/content/pm/SuspendDialogInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    :goto_0
    iput-object v0, p0, Landroid/content/pm/SuspendDialogInfo;->mTitle:Ljava/lang/String;

    invoke-static {p1}, Landroid/content/pm/SuspendDialogInfo$Builder;->-$$Nest$fgetmDialogMessageResId(Landroid/content/pm/SuspendDialogInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessageResId:I

    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessageResId:I

    if-nez v0, :cond_1

    invoke-static {p1}, Landroid/content/pm/SuspendDialogInfo$Builder;->-$$Nest$fgetmDialogMessage(Landroid/content/pm/SuspendDialogInfo$Builder;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v1

    :goto_1
    iput-object v0, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessage:Ljava/lang/String;

    invoke-static {p1}, Landroid/content/pm/SuspendDialogInfo$Builder;->-$$Nest$fgetmNeutralButtonTextResId(Landroid/content/pm/SuspendDialogInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonTextResId:I

    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonTextResId:I

    if-nez v0, :cond_2

    invoke-static {p1}, Landroid/content/pm/SuspendDialogInfo$Builder;->-$$Nest$fgetmNeutralButtonText(Landroid/content/pm/SuspendDialogInfo$Builder;)Ljava/lang/String;

    move-result-object v1

    :cond_2
    iput-object v1, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonText:Ljava/lang/String;

    invoke-static {p1}, Landroid/content/pm/SuspendDialogInfo$Builder;->-$$Nest$fgetmNeutralButtonAction(Landroid/content/pm/SuspendDialogInfo$Builder;)I

    move-result v0

    iput v0, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonAction:I

    return-void
.end method

.method private constructor blacklist <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/SuspendDialogInfo;->mIconResId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/SuspendDialogInfo;->mTitleResId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/SuspendDialogInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessageResId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessage:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonTextResId:I

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonText:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonAction:I

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/content/pm/SuspendDialogInfo-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/content/pm/SuspendDialogInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public static blacklist restoreFromXml(Lcom/android/modules/utils/TypedXmlPullParser;)Landroid/content/pm/SuspendDialogInfo;
    .locals 10

    new-instance v0, Landroid/content/pm/SuspendDialogInfo$Builder;

    invoke-direct {v0}, Landroid/content/pm/SuspendDialogInfo$Builder;-><init>()V

    :try_start_0
    const-string v1, "iconResId"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p0, v3, v1, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    const-string/jumbo v4, "titleResId"

    invoke-interface {p0, v3, v4, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "title"

    invoke-static {p0, v5}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "buttonTextResId"

    invoke-interface {p0, v3, v6, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v6

    const-string v7, "buttonText"

    invoke-static {p0, v7}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "buttonAction"

    invoke-interface {p0, v3, v8, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    const-string v9, "dialogMessageResId"

    invoke-interface {p0, v3, v9, v2}, Lcom/android/modules/utils/TypedXmlPullParser;->getAttributeInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    const-string v3, "dialogMessage"

    invoke-static {p0, v3}, Lcom/android/internal/util/XmlUtils;->readStringAttribute(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/content/pm/SuspendDialogInfo$Builder;->setIcon(I)Landroid/content/pm/SuspendDialogInfo$Builder;

    :cond_0
    if-eqz v4, :cond_1

    invoke-virtual {v0, v4}, Landroid/content/pm/SuspendDialogInfo$Builder;->setTitle(I)Landroid/content/pm/SuspendDialogInfo$Builder;

    goto :goto_0

    :cond_1
    if-eqz v5, :cond_2

    invoke-virtual {v0, v5}, Landroid/content/pm/SuspendDialogInfo$Builder;->setTitle(Ljava/lang/String;)Landroid/content/pm/SuspendDialogInfo$Builder;

    :cond_2
    :goto_0
    if-eqz v6, :cond_3

    invoke-virtual {v0, v6}, Landroid/content/pm/SuspendDialogInfo$Builder;->setNeutralButtonText(I)Landroid/content/pm/SuspendDialogInfo$Builder;

    goto :goto_1

    :cond_3
    if-eqz v7, :cond_4

    invoke-virtual {v0, v7}, Landroid/content/pm/SuspendDialogInfo$Builder;->setNeutralButtonText(Ljava/lang/String;)Landroid/content/pm/SuspendDialogInfo$Builder;

    :cond_4
    :goto_1
    if-eqz v2, :cond_5

    invoke-virtual {v0, v2}, Landroid/content/pm/SuspendDialogInfo$Builder;->setMessage(I)Landroid/content/pm/SuspendDialogInfo$Builder;

    goto :goto_2

    :cond_5
    if-eqz v3, :cond_6

    invoke-virtual {v0, v3}, Landroid/content/pm/SuspendDialogInfo$Builder;->setMessage(Ljava/lang/String;)Landroid/content/pm/SuspendDialogInfo$Builder;

    :cond_6
    :goto_2
    invoke-virtual {v0, v8}, Landroid/content/pm/SuspendDialogInfo$Builder;->setNeutralButtonAction(I)Landroid/content/pm/SuspendDialogInfo$Builder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    goto :goto_3

    :catch_0
    move-exception v1

    sget-object v2, Landroid/content/pm/SuspendDialogInfo;->TAG:Ljava/lang/String;

    const-string v3, "Exception while parsing from xml. Some fields may default"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    invoke-virtual {v0}, Landroid/content/pm/SuspendDialogInfo$Builder;->build()Landroid/content/pm/SuspendDialogInfo;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Landroid/content/pm/SuspendDialogInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/content/pm/SuspendDialogInfo;

    iget v3, p0, Landroid/content/pm/SuspendDialogInfo;->mIconResId:I

    iget v4, v1, Landroid/content/pm/SuspendDialogInfo;->mIconResId:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Landroid/content/pm/SuspendDialogInfo;->mTitleResId:I

    iget v4, v1, Landroid/content/pm/SuspendDialogInfo;->mTitleResId:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/content/pm/SuspendDialogInfo;->mTitle:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/SuspendDialogInfo;->mTitle:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessageResId:I

    iget v4, v1, Landroid/content/pm/SuspendDialogInfo;->mDialogMessageResId:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessage:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/SuspendDialogInfo;->mDialogMessage:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonTextResId:I

    iget v4, v1, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonTextResId:I

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonText:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonText:Ljava/lang/String;

    invoke-static {v3, v4}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonAction:I

    iget v4, v1, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonAction:I

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public blacklist getDialogMessage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessage:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDialogMessageResId()I
    .locals 1

    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessageResId:I

    return v0
.end method

.method public blacklist getIconResId()I
    .locals 1

    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mIconResId:I

    return v0
.end method

.method public blacklist getNeutralButtonAction()I
    .locals 1

    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonAction:I

    return v0
.end method

.method public blacklist getNeutralButtonText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonText:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getNeutralButtonTextResId()I
    .locals 1

    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonTextResId:I

    return v0
.end method

.method public blacklist getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/SuspendDialogInfo;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getTitleResId()I
    .locals 1

    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mTitleResId:I

    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 3

    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mIconResId:I

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/pm/SuspendDialogInfo;->mTitleResId:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/content/pm/SuspendDialogInfo;->mTitle:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonTextResId:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonText:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessageResId:I

    add-int/2addr v1, v2

    mul-int/lit8 v0, v1, 0x1f

    iget-object v2, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessage:Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Objects;->hashCode(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v0, v2

    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonAction:I

    add-int/2addr v1, v2

    return v1
.end method

.method public blacklist saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mIconResId:I

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "iconResId"

    iget v2, p0, Landroid/content/pm/SuspendDialogInfo;->mIconResId:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mTitleResId:I

    if-eqz v0, :cond_1

    const-string/jumbo v0, "titleResId"

    iget v2, p0, Landroid/content/pm/SuspendDialogInfo;->mTitleResId:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "title"

    iget-object v2, p0, Landroid/content/pm/SuspendDialogInfo;->mTitle:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_0
    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessageResId:I

    if-eqz v0, :cond_2

    const-string v0, "dialogMessageResId"

    iget v2, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessageResId:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_1

    :cond_2
    const-string v0, "dialogMessage"

    iget-object v2, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessage:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_1
    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonTextResId:I

    if-eqz v0, :cond_3

    const-string v0, "buttonTextResId"

    iget v2, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonTextResId:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_2

    :cond_3
    const-string v0, "buttonText"

    iget-object v2, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonText:Ljava/lang/String;

    invoke-static {p1, v0, v2}, Lcom/android/internal/util/XmlUtils;->writeStringAttribute(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_2
    const-string v0, "buttonAction"

    iget v2, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonAction:I

    invoke-interface {p1, v1, v0, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SuspendDialogInfo: {"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Landroid/content/pm/SuspendDialogInfo;->mIconResId:I

    const-string v2, " "

    if-eqz v1, :cond_0

    const-string/jumbo v1, "mIconId = 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/SuspendDialogInfo;->mIconResId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget v1, p0, Landroid/content/pm/SuspendDialogInfo;->mTitleResId:I

    const-string v3, "\""

    if-eqz v1, :cond_1

    const-string/jumbo v1, "mTitleResId = 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/SuspendDialogInfo;->mTitleResId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Landroid/content/pm/SuspendDialogInfo;->mTitle:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string/jumbo v1, "mTitle = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/SuspendDialogInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    iget v1, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonTextResId:I

    if-eqz v1, :cond_3

    const-string/jumbo v1, "mNeutralButtonTextResId = 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonTextResId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_3
    iget-object v1, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonText:Ljava/lang/String;

    if-eqz v1, :cond_4

    const-string/jumbo v1, "mNeutralButtonText = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    :goto_1
    iget v1, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessageResId:I

    if-eqz v1, :cond_5

    const-string/jumbo v1, "mDialogMessageResId = 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessageResId:I

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_5
    iget-object v1, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessage:Ljava/lang/String;

    if-eqz v1, :cond_6

    const-string/jumbo v1, "mDialogMessage = \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\" "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    :goto_2
    const-string/jumbo v1, "mNeutralButtonAction = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonAction:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mIconResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mTitleResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/SuspendDialogInfo;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessageResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/SuspendDialogInfo;->mDialogMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonTextResId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v0, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Landroid/content/pm/SuspendDialogInfo;->mNeutralButtonAction:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
