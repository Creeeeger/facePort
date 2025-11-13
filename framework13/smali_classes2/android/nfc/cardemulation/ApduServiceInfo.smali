.class public final Landroid/nfc/cardemulation/ApduServiceInfo;
.super Ljava/lang/Object;
.source "ApduServiceInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field static final blacklist AID_BASED_FALSE:Ljava/lang/String; = "false"

.field static final blacklist AID_BASED_TRUE:Ljava/lang/String; = "true"

.field public static final greylist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/nfc/cardemulation/ApduServiceInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final blacklist SE_PREFIX_ESE:Ljava/lang/String; = "eSE"

.field static final blacklist SE_PREFIX_SIM:Ljava/lang/String; = "SIM"

.field static final blacklist SE_PREFIX_UICC:Ljava/lang/String; = "UICC"

.field static final greylist-max-o TAG:Ljava/lang/String; = "ApduServiceInfo"


# instance fields
.field private blacklist mAidBased:Z

.field final greylist-max-o mBannerResourceId:I

.field final greylist-max-o mDescription:Ljava/lang/String;

.field final greylist mDynamicAidGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mOffHostName:Ljava/lang/String;

.field final greylist-max-o mOnHost:Z

.field private blacklist mOtherServiceSelectionState:Z

.field final blacklist mRequiresDeviceScreenOn:Z

.field final greylist-max-o mRequiresDeviceUnlock:Z

.field private blacklist mSamsungExt:Z

.field final greylist mService:Landroid/content/pm/ResolveInfo;

.field final greylist-max-o mSettingsActivityName:Ljava/lang/String;

.field final greylist mStaticAidGroups:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;"
        }
    .end annotation
.end field

.field blacklist mStaticOffHostName:Ljava/lang/String;

.field final greylist-max-o mUid:I


# direct methods
.method static constructor blacklist <clinit>()V
    .locals 1

    .line 770
    new-instance v0, Landroid/nfc/cardemulation/ApduServiceInfo$1;

    invoke-direct {v0}, Landroid/nfc/cardemulation/ApduServiceInfo$1;-><init>()V

    sput-object v0, Landroid/nfc/cardemulation/ApduServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist <init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Z)V
    .locals 23
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;
    .param p3, "onHost"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 200
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    const-string/jumbo v0, "true"

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 146
    const/4 v5, 0x1

    iput-boolean v5, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mAidBased:Z

    .line 148
    const/4 v6, 0x0

    iput-boolean v6, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mSamsungExt:Z

    .line 201
    iget-object v7, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 202
    .local v7, "si":Landroid/content/pm/ServiceInfo;
    const/4 v8, 0x0

    .line 203
    .local v8, "parser":Landroid/content/res/XmlResourceParser;
    const/4 v9, 0x0

    .line 206
    .local v9, "extParser":Landroid/content/res/XmlResourceParser;
    if-eqz v4, :cond_1

    .line 207
    :try_start_0
    const-string v10, "android.nfc.cardemulation.host_apdu_service"

    invoke-virtual {v7, v2, v10}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    move-object v8, v10

    .line 208
    if-eqz v8, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "No android.nfc.cardemulation.host_apdu_service meta-data"

    invoke-direct {v0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v7    # "si":Landroid/content/pm/ServiceInfo;
    .end local v8    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v9    # "extParser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    .end local p2    # "info":Landroid/content/pm/ResolveInfo;
    .end local p3    # "onHost":Z
    throw v0

    .line 213
    .restart local v7    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v8    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v9    # "extParser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/nfc/cardemulation/ApduServiceInfo;
    .restart local p1    # "pm":Landroid/content/pm/PackageManager;
    .restart local p2    # "info":Landroid/content/pm/ResolveInfo;
    .restart local p3    # "onHost":Z
    :cond_1
    const-string v10, "android.nfc.cardemulation.off_host_apdu_service"

    invoke-virtual {v7, v2, v10}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    move-object v8, v10

    .line 214
    if-eqz v8, :cond_2d

    .line 220
    const-string v10, "com.gsma.services.nfc.extensions"

    invoke-virtual {v7, v2, v10}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v10

    move-object v9, v10

    .line 221
    if-nez v9, :cond_2

    .line 222
    const-string v10, "android.nfc.cardemulation.se_extensions"

    invoke-virtual {v7, v2, v10}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v10
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    move-object v9, v10

    .line 228
    :cond_2
    :goto_0
    :try_start_1
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v10
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    .line 229
    .local v10, "eventType":I
    :goto_1
    const/4 v11, 0x2

    if-eq v10, v11, :cond_3

    if-eq v10, v5, :cond_3

    .line 230
    :try_start_2
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v11
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    move v10, v11

    goto :goto_1

    .line 233
    :cond_3
    :try_start_3
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v12
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    .line 234
    .local v12, "tagName":Ljava/lang/String;
    if-eqz v4, :cond_5

    :try_start_4
    const-string v13, "host-apdu-service"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    goto :goto_2

    .line 235
    :cond_4
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "Meta-data does not start with <host-apdu-service> tag"

    invoke-direct {v0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v7    # "si":Landroid/content/pm/ServiceInfo;
    .end local v8    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v9    # "extParser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    .end local p2    # "info":Landroid/content/pm/ResolveInfo;
    .end local p3    # "onHost":Z
    throw v0

    .line 237
    .restart local v7    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v8    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v9    # "extParser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/nfc/cardemulation/ApduServiceInfo;
    .restart local p1    # "pm":Landroid/content/pm/PackageManager;
    .restart local p2    # "info":Landroid/content/pm/ResolveInfo;
    .restart local p3    # "onHost":Z
    :cond_5
    :goto_2
    if-nez v4, :cond_7

    const-string v13, "offhost-apdu-service"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    goto :goto_3

    .line 238
    :cond_6
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v5, "Meta-data does not start with <offhost-apdu-service> tag"

    invoke-direct {v0, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v7    # "si":Landroid/content/pm/ServiceInfo;
    .end local v8    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v9    # "extParser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    .end local p2    # "info":Landroid/content/pm/ResolveInfo;
    .end local p3    # "onHost":Z
    throw v0
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    .line 242
    .restart local v7    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v8    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v9    # "extParser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/nfc/cardemulation/ApduServiceInfo;
    .restart local p1    # "pm":Landroid/content/pm/PackageManager;
    .restart local p2    # "info":Landroid/content/pm/ResolveInfo;
    .restart local p3    # "onHost":Z
    :cond_7
    :goto_3
    :try_start_5
    iget-object v13, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v13}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/Resources;

    move-result-object v13

    .line 243
    .local v13, "res":Landroid/content/res/Resources;
    invoke-static {v8}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v14
    :try_end_5
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_6

    .line 244
    .local v14, "attrs":Landroid/util/AttributeSet;
    const-string v15, "SIM"

    const-string v5, "eSE1"

    const-string v11, "eSE"

    const-string v6, "SIM1"

    const-string v2, "ApduServiceInfo"

    if-eqz v4, :cond_9

    .line 245
    move/from16 v19, v10

    .end local v10    # "eventType":I
    .local v19, "eventType":I
    :try_start_6
    sget-object v10, Lcom/android/internal/R$styleable;->HostApduService:[I

    invoke-virtual {v13, v14, v10}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v10

    .line 247
    .local v10, "sa":Landroid/content/res/TypedArray;
    iput-object v3, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 248
    move-object/from16 v21, v0

    move-object/from16 v20, v12

    const/4 v12, 0x0

    .end local v12    # "tagName":Ljava/lang/String;
    .local v20, "tagName":Ljava/lang/String;
    invoke-virtual {v10, v12}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;
    :try_end_6
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 250
    move-object/from16 v22, v9

    const/4 v0, 0x2

    .end local v9    # "extParser":Landroid/content/res/XmlResourceParser;
    .local v22, "extParser":Landroid/content/res/XmlResourceParser;
    :try_start_7
    invoke-virtual {v10, v0, v12}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v9

    iput-boolean v9, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    .line 253
    invoke-virtual/range {p0 .. p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->isExceptionalSPay()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 254
    iput-boolean v12, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceScreenOn:Z

    goto :goto_4

    .line 256
    :cond_8
    const/4 v0, 0x4

    const/4 v9, 0x1

    invoke-virtual {v10, v0, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceScreenOn:Z

    .line 260
    :goto_4
    const/4 v0, -0x1

    const/4 v9, 0x3

    invoke-virtual {v10, v9, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    .line 262
    const/4 v0, 0x1

    invoke-virtual {v10, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 264
    const/4 v0, 0x0

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mOffHostName:Ljava/lang/String;

    .line 265
    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticOffHostName:Ljava/lang/String;

    .line 266
    invoke-virtual {v10}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 267
    .end local v10    # "sa":Landroid/content/res/TypedArray;
    goto/16 :goto_6

    .line 389
    .end local v13    # "res":Landroid/content/res/Resources;
    .end local v14    # "attrs":Landroid/util/AttributeSet;
    .end local v19    # "eventType":I
    .end local v20    # "tagName":Ljava/lang/String;
    :catchall_0
    move-exception v0

    move-object/from16 v9, v22

    goto/16 :goto_1b

    .line 386
    :catch_0
    move-exception v0

    move-object/from16 v9, v22

    goto/16 :goto_1a

    .line 389
    .end local v22    # "extParser":Landroid/content/res/XmlResourceParser;
    .restart local v9    # "extParser":Landroid/content/res/XmlResourceParser;
    :catchall_1
    move-exception v0

    move-object/from16 v22, v9

    .end local v9    # "extParser":Landroid/content/res/XmlResourceParser;
    .restart local v22    # "extParser":Landroid/content/res/XmlResourceParser;
    goto/16 :goto_1b

    .line 386
    .end local v22    # "extParser":Landroid/content/res/XmlResourceParser;
    .restart local v9    # "extParser":Landroid/content/res/XmlResourceParser;
    :catch_1
    move-exception v0

    move-object/from16 v22, v9

    .end local v9    # "extParser":Landroid/content/res/XmlResourceParser;
    .restart local v22    # "extParser":Landroid/content/res/XmlResourceParser;
    goto/16 :goto_1a

    .line 268
    .end local v22    # "extParser":Landroid/content/res/XmlResourceParser;
    .restart local v9    # "extParser":Landroid/content/res/XmlResourceParser;
    .local v10, "eventType":I
    .restart local v12    # "tagName":Ljava/lang/String;
    .restart local v13    # "res":Landroid/content/res/Resources;
    .restart local v14    # "attrs":Landroid/util/AttributeSet;
    :cond_9
    move-object/from16 v21, v0

    move-object/from16 v22, v9

    move/from16 v19, v10

    move-object/from16 v20, v12

    .end local v9    # "extParser":Landroid/content/res/XmlResourceParser;
    .end local v10    # "eventType":I
    .end local v12    # "tagName":Ljava/lang/String;
    .restart local v19    # "eventType":I
    .restart local v20    # "tagName":Ljava/lang/String;
    .restart local v22    # "extParser":Landroid/content/res/XmlResourceParser;
    :try_start_8
    sget-object v0, Lcom/android/internal/R$styleable;->OffHostApduService:[I

    invoke-virtual {v13, v14, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 270
    .local v0, "sa":Landroid/content/res/TypedArray;
    iput-object v3, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 271
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    .line 273
    const/4 v10, 0x2

    invoke-virtual {v0, v10, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v12

    iput-boolean v12, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    .line 276
    const/4 v10, 0x5

    invoke-virtual {v0, v10, v9}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v10

    iput-boolean v10, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceScreenOn:Z

    .line 279
    const/4 v9, -0x1

    const/4 v10, 0x3

    invoke-virtual {v0, v10, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v9

    iput v9, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    .line 281
    const/4 v9, 0x1

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 283
    const/4 v9, 0x4

    invoke-virtual {v0, v9}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mOffHostName:Ljava/lang/String;
    :try_end_8
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 286
    if-eqz v9, :cond_b

    .line 287
    :try_start_9
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    .line 288
    iput-object v5, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mOffHostName:Ljava/lang/String;

    goto :goto_5

    .line 289
    :cond_a
    iget-object v9, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mOffHostName:Ljava/lang/String;

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 290
    iput-object v6, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mOffHostName:Ljava/lang/String;
    :try_end_9
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto :goto_5

    .line 293
    :cond_b
    :try_start_a
    const-string v9, "###---"

    invoke-static {v2, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iput-object v6, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mOffHostName:Ljava/lang/String;

    .line 296
    :cond_c
    :goto_5
    iget-object v9, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mOffHostName:Ljava/lang/String;

    iput-object v9, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticOffHostName:Ljava/lang/String;

    .line 297
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 300
    .end local v0    # "sa":Landroid/content/res/TypedArray;
    :goto_6
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    .line 301
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    .line 302
    iput-boolean v4, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    .line 304
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v0

    .line 305
    .local v0, "depth":I
    const/4 v9, 0x0

    move/from16 v10, v19

    move-object/from16 v12, v20

    .line 308
    .end local v19    # "eventType":I
    .end local v20    # "tagName":Ljava/lang/String;
    .local v9, "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    .restart local v10    # "eventType":I
    .restart local v12    # "tagName":Ljava/lang/String;
    :goto_7
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3
    :try_end_a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    move v10, v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_e

    :try_start_b
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v3

    if-le v3, v0, :cond_d

    goto :goto_8

    :cond_d
    move-object/from16 v18, v6

    move-object/from16 v19, v15

    goto/16 :goto_11

    :cond_e
    :goto_8
    const/4 v3, 0x1

    if-eq v10, v3, :cond_1d

    .line 310
    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v3
    :try_end_b
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    move-object v12, v3

    .line 311
    const-string v3, "aid-group"

    const/4 v4, 0x2

    if-ne v10, v4, :cond_12

    :try_start_c
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    if-nez v9, :cond_12

    .line 313
    sget-object v3, Lcom/android/internal/R$styleable;->AidGroup:[I

    invoke-virtual {v13, v14, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 316
    .local v3, "groupAttrs":Landroid/content/res/TypedArray;
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v4, v17

    .line 318
    .local v4, "groupCategory":Ljava/lang/String;
    move/from16 v17, v0

    const/4 v0, 0x0

    .end local v0    # "depth":I
    .local v17, "depth":I
    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    .line 320
    .local v0, "groupDescription":Ljava/lang/String;
    move-object/from16 v18, v6

    const-string v6, "payment"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-object/from16 v19, v4

    .end local v4    # "groupCategory":Ljava/lang/String;
    .local v19, "groupCategory":Ljava/lang/String;
    const-string v4, "other"

    if-nez v6, :cond_f

    .line 321
    move-object v6, v4

    .end local v19    # "groupCategory":Ljava/lang/String;
    .local v6, "groupCategory":Ljava/lang/String;
    goto :goto_9

    .line 320
    .end local v6    # "groupCategory":Ljava/lang/String;
    .restart local v19    # "groupCategory":Ljava/lang/String;
    :cond_f
    move-object/from16 v6, v19

    .line 323
    .end local v19    # "groupCategory":Ljava/lang/String;
    .restart local v6    # "groupCategory":Ljava/lang/String;
    :goto_9
    move-object/from16 v19, v15

    :try_start_d
    iget-object v15, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v15, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/nfc/cardemulation/AidGroup;

    move-object v9, v15

    .line 324
    if-eqz v9, :cond_10

    .line 325
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_11

    .line 326
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Not allowing multiple aid-groups in the "

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v15, " category"

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v4, 0x0

    move-object v9, v4

    .end local v9    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    .local v4, "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    goto :goto_a

    .line 331
    .end local v4    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    .restart local v9    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    :cond_10
    new-instance v4, Landroid/nfc/cardemulation/AidGroup;

    invoke-direct {v4, v6, v0}, Landroid/nfc/cardemulation/AidGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .end local v9    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    .restart local v4    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    move-object v9, v4

    .line 333
    .end local v4    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    .restart local v9    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    :cond_11
    :goto_a
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 334
    .end local v0    # "groupDescription":Ljava/lang/String;
    .end local v3    # "groupAttrs":Landroid/content/res/TypedArray;
    .end local v6    # "groupCategory":Ljava/lang/String;
    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v0, v17

    move-object/from16 v6, v18

    move-object/from16 v15, v19

    goto/16 :goto_7

    .line 311
    .end local v17    # "depth":I
    .local v0, "depth":I
    :cond_12
    move/from16 v17, v0

    move-object/from16 v18, v6

    move-object/from16 v19, v15

    .line 334
    .end local v0    # "depth":I
    .restart local v17    # "depth":I
    const/4 v0, 0x3

    if-ne v10, v0, :cond_15

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    if-eqz v9, :cond_15

    .line 336
    iget-object v0, v9, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_13

    .line 337
    iget-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    iget-object v3, v9, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 338
    iget-object v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    iget-object v3, v9, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    invoke-virtual {v0, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    .line 341
    :cond_13
    const-string v0, "Not adding <aid-group> with empty or invalid AIDs"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 343
    :cond_14
    :goto_b
    const/4 v9, 0x0

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v0, v17

    move-object/from16 v6, v18

    move-object/from16 v15, v19

    goto/16 :goto_7

    .line 344
    :cond_15
    const-string v0, "Ignoring invalid or duplicate aid: "

    const/4 v3, 0x2

    if-ne v10, v3, :cond_17

    :try_start_e
    const-string v3, "aid-filter"

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_17

    if-eqz v9, :cond_17

    .line 346
    sget-object v3, Lcom/android/internal/R$styleable;->AidFilter:[I

    invoke-virtual {v13, v14, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 348
    .local v3, "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 349
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 350
    .local v4, "aid":Ljava/lang/String;
    invoke-static {v4}, Landroid/nfc/cardemulation/CardEmulation;->isValidAid(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    iget-object v6, v9, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_16

    .line 351
    iget-object v0, v9, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 353
    :cond_16
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 355
    :goto_c
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 356
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v4    # "aid":Ljava/lang/String;
    goto/16 :goto_10

    :cond_17
    const/4 v3, 0x2

    if-ne v10, v3, :cond_19

    const-string v3, "aid-prefix-filter"

    .line 357
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    if-eqz v9, :cond_19

    .line 358
    sget-object v3, Lcom/android/internal/R$styleable;->AidFilter:[I

    invoke-virtual {v13, v14, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 360
    .restart local v3    # "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 361
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 363
    .restart local v4    # "aid":Ljava/lang/String;
    const-string v6, "*"

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 364
    invoke-static {v4}, Landroid/nfc/cardemulation/CardEmulation;->isValidAid(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_18

    iget-object v6, v9, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_18

    .line 365
    iget-object v0, v9, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 367
    :cond_18
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    :goto_d
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v4    # "aid":Ljava/lang/String;
    goto :goto_f

    .line 370
    :cond_19
    const/4 v3, 0x2

    if-ne v10, v3, :cond_1b

    const-string v3, "aid-suffix-filter"

    .line 371
    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    if-eqz v9, :cond_1c

    .line 372
    sget-object v3, Lcom/android/internal/R$styleable;->AidFilter:[I

    invoke-virtual {v13, v14, v3}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 374
    .restart local v3    # "a":Landroid/content/res/TypedArray;
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 375
    invoke-virtual {v6}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    .line 377
    .restart local v4    # "aid":Ljava/lang/String;
    const-string v6, "#"

    invoke-virtual {v4, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    .line 378
    invoke-static {v4}, Landroid/nfc/cardemulation/CardEmulation;->isValidAid(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1a

    iget-object v6, v9, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1a

    .line 379
    iget-object v0, v9, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 381
    :cond_1a
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :goto_e
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 384
    .end local v3    # "a":Landroid/content/res/TypedArray;
    .end local v4    # "aid":Ljava/lang/String;
    goto :goto_10

    .line 370
    :cond_1b
    :goto_f
    nop

    .line 308
    :cond_1c
    :goto_10
    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v0, v17

    move-object/from16 v6, v18

    move-object/from16 v15, v19

    goto/16 :goto_7

    .end local v17    # "depth":I
    .restart local v0    # "depth":I
    :cond_1d
    move/from16 v17, v0

    move-object/from16 v18, v6

    move-object/from16 v19, v15

    .line 389
    .end local v0    # "depth":I
    .end local v9    # "currentGroup":Landroid/nfc/cardemulation/AidGroup;
    .end local v10    # "eventType":I
    .end local v12    # "tagName":Ljava/lang/String;
    .end local v13    # "res":Landroid/content/res/Resources;
    .end local v14    # "attrs":Landroid/util/AttributeSet;
    :goto_11
    if-eqz v8, :cond_1e

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    .line 392
    :cond_1e
    iget-object v0, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mUid:I

    .line 394
    const/4 v0, 0x1

    iput-boolean v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mOtherServiceSelectionState:Z

    .line 397
    const/4 v3, 0x0

    .line 398
    .local v3, "extOffHostName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 400
    .local v4, "aidBased":Ljava/lang/String;
    if-eqz v22, :cond_2c

    .line 402
    :try_start_f
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v0

    .line 403
    .local v0, "eventType":I
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v6
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    .line 405
    .local v6, "depth":I
    :goto_12
    const/4 v9, 0x2

    if-eq v0, v9, :cond_1f

    const/4 v9, 0x1

    if-eq v0, v9, :cond_1f

    .line 406
    :try_start_10
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v9
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    move v0, v9

    goto :goto_12

    .line 445
    .end local v0    # "eventType":I
    .end local v6    # "depth":I
    :catchall_2
    move-exception v0

    move-object/from16 v15, v22

    goto/16 :goto_18

    .line 408
    .restart local v0    # "eventType":I
    .restart local v6    # "depth":I
    :cond_1f
    :try_start_11
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v9

    .line 409
    .local v9, "tagName":Ljava/lang/String;
    const-string v10, "extensions"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2b

    .line 413
    :goto_13
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v10
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    move v0, v10

    const/4 v12, 0x3

    if-ne v10, v12, :cond_21

    :try_start_12
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v10
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_2

    if-le v10, v6, :cond_20

    goto :goto_14

    :cond_20
    move-object/from16 v15, v22

    goto/16 :goto_17

    :cond_21
    :goto_14
    const/4 v10, 0x1

    if-eq v0, v10, :cond_2a

    .line 415
    :try_start_13
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v10
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_4

    move-object v9, v10

    .line 416
    const/4 v10, 0x2

    if-ne v0, v10, :cond_24

    :try_start_14
    const-string v10, "AID-based"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_24

    .line 417
    invoke-interface/range {v22 .. v22}, Landroid/content/res/XmlResourceParser;->nextText()Ljava/lang/String;

    move-result-object v10

    move-object v4, v10

    .line 418
    if-eqz v4, :cond_23

    move-object/from16 v10, v21

    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_22

    const-string v13, "false"

    .line 419
    invoke-virtual {v4, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_23

    .line 422
    :cond_22
    invoke-virtual {v4, v10}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    iput-boolean v13, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mAidBased:Z

    .line 423
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "XYZ-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-boolean v14, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mAidBased:Z

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v2, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v21, v10

    goto :goto_13

    .line 420
    :cond_23
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Unsupported AID-based value: "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v3    # "extOffHostName":Ljava/lang/String;
    .end local v4    # "aidBased":Ljava/lang/String;
    .end local v7    # "si":Landroid/content/pm/ServiceInfo;
    .end local v8    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v22    # "extParser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    .end local p2    # "info":Landroid/content/pm/ResolveInfo;
    .end local p3    # "onHost":Z
    throw v2
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_2

    .line 416
    .restart local v3    # "extOffHostName":Ljava/lang/String;
    .restart local v4    # "aidBased":Ljava/lang/String;
    .restart local v7    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v8    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v22    # "extParser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/nfc/cardemulation/ApduServiceInfo;
    .restart local p1    # "pm":Landroid/content/pm/PackageManager;
    .restart local p2    # "info":Landroid/content/pm/ResolveInfo;
    .restart local p3    # "onHost":Z
    :cond_24
    move-object/from16 v10, v21

    .line 424
    const/4 v13, 0x2

    if-ne v0, v13, :cond_29

    :try_start_15
    const-string v14, "se-id"

    invoke-virtual {v14, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_29

    .line 426
    const-string v14, "name"
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    move-object/from16 v15, v22

    const/4 v12, 0x0

    .end local v22    # "extParser":Landroid/content/res/XmlResourceParser;
    .local v15, "extParser":Landroid/content/res/XmlResourceParser;
    :try_start_16
    invoke-interface {v15, v12, v14}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    move-object v3, v14

    .line 427
    if-eqz v3, :cond_27

    .line 428
    invoke-virtual {v3, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_25

    .line 429
    move-object v3, v5

    move-object/from16 v14, v19

    goto :goto_16

    .line 430
    :cond_25
    const-string v14, "UICC"

    invoke-virtual {v3, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_26

    move-object/from16 v14, v19

    invoke-virtual {v3, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_28

    goto :goto_15

    :cond_26
    move-object/from16 v14, v19

    .line 431
    :goto_15
    move-object/from16 v3, v18

    goto :goto_16

    .line 435
    :cond_27
    move-object/from16 v14, v19

    const-string v12, "###+++"

    invoke-static {v2, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    move-object/from16 v3, v18

    .line 438
    :cond_28
    :goto_16
    iput-object v3, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mOffHostName:Ljava/lang/String;

    .line 439
    iput-object v3, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticOffHostName:Ljava/lang/String;

    move-object/from16 v21, v10

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    goto/16 :goto_13

    .line 424
    .end local v15    # "extParser":Landroid/content/res/XmlResourceParser;
    .restart local v22    # "extParser":Landroid/content/res/XmlResourceParser;
    :cond_29
    move-object/from16 v14, v19

    move-object/from16 v15, v22

    .line 413
    .end local v22    # "extParser":Landroid/content/res/XmlResourceParser;
    .restart local v15    # "extParser":Landroid/content/res/XmlResourceParser;
    move-object/from16 v21, v10

    move-object/from16 v19, v14

    move-object/from16 v22, v15

    goto/16 :goto_13

    .end local v15    # "extParser":Landroid/content/res/XmlResourceParser;
    .restart local v22    # "extParser":Landroid/content/res/XmlResourceParser;
    :cond_2a
    move-object/from16 v15, v22

    .line 443
    .end local v22    # "extParser":Landroid/content/res/XmlResourceParser;
    .restart local v15    # "extParser":Landroid/content/res/XmlResourceParser;
    :goto_17
    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mSamsungExt:Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 445
    .end local v0    # "eventType":I
    .end local v6    # "depth":I
    .end local v9    # "tagName":Ljava/lang/String;
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->close()V

    .line 446
    goto :goto_19

    .line 410
    .end local v15    # "extParser":Landroid/content/res/XmlResourceParser;
    .restart local v0    # "eventType":I
    .restart local v6    # "depth":I
    .restart local v9    # "tagName":Ljava/lang/String;
    .restart local v22    # "extParser":Landroid/content/res/XmlResourceParser;
    :cond_2b
    move-object/from16 v15, v22

    .end local v22    # "extParser":Landroid/content/res/XmlResourceParser;
    .restart local v15    # "extParser":Landroid/content/res/XmlResourceParser;
    :try_start_17
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Meta-data does not start with <extensions> tag "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v5}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v3    # "extOffHostName":Ljava/lang/String;
    .end local v4    # "aidBased":Ljava/lang/String;
    .end local v7    # "si":Landroid/content/pm/ServiceInfo;
    .end local v8    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v15    # "extParser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    .end local p2    # "info":Landroid/content/pm/ResolveInfo;
    .end local p3    # "onHost":Z
    throw v2
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    .line 445
    .end local v0    # "eventType":I
    .end local v6    # "depth":I
    .end local v9    # "tagName":Ljava/lang/String;
    .restart local v3    # "extOffHostName":Ljava/lang/String;
    .restart local v4    # "aidBased":Ljava/lang/String;
    .restart local v7    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v8    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v15    # "extParser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/nfc/cardemulation/ApduServiceInfo;
    .restart local p1    # "pm":Landroid/content/pm/PackageManager;
    .restart local p2    # "info":Landroid/content/pm/ResolveInfo;
    .restart local p3    # "onHost":Z
    :catchall_3
    move-exception v0

    goto :goto_18

    .end local v15    # "extParser":Landroid/content/res/XmlResourceParser;
    .restart local v22    # "extParser":Landroid/content/res/XmlResourceParser;
    :catchall_4
    move-exception v0

    move-object/from16 v15, v22

    .end local v22    # "extParser":Landroid/content/res/XmlResourceParser;
    .restart local v15    # "extParser":Landroid/content/res/XmlResourceParser;
    :goto_18
    invoke-interface {v15}, Landroid/content/res/XmlResourceParser;->close()V

    .line 446
    throw v0

    .line 448
    .end local v15    # "extParser":Landroid/content/res/XmlResourceParser;
    .restart local v22    # "extParser":Landroid/content/res/XmlResourceParser;
    :cond_2c
    move-object/from16 v15, v22

    .end local v22    # "extParser":Landroid/content/res/XmlResourceParser;
    .restart local v15    # "extParser":Landroid/content/res/XmlResourceParser;
    const/4 v0, 0x0

    iput-boolean v0, v1, Landroid/nfc/cardemulation/ApduServiceInfo;->mSamsungExt:Z

    .line 451
    :goto_19
    return-void

    .line 389
    .end local v3    # "extOffHostName":Ljava/lang/String;
    .end local v4    # "aidBased":Ljava/lang/String;
    .end local v15    # "extParser":Landroid/content/res/XmlResourceParser;
    .restart local v22    # "extParser":Landroid/content/res/XmlResourceParser;
    :catchall_5
    move-exception v0

    move-object/from16 v15, v22

    move-object v9, v15

    .end local v22    # "extParser":Landroid/content/res/XmlResourceParser;
    .restart local v15    # "extParser":Landroid/content/res/XmlResourceParser;
    goto :goto_1b

    .line 386
    .end local v15    # "extParser":Landroid/content/res/XmlResourceParser;
    .restart local v22    # "extParser":Landroid/content/res/XmlResourceParser;
    :catch_2
    move-exception v0

    move-object/from16 v15, v22

    move-object v9, v15

    .end local v22    # "extParser":Landroid/content/res/XmlResourceParser;
    .restart local v15    # "extParser":Landroid/content/res/XmlResourceParser;
    goto :goto_1a

    .line 389
    .end local v15    # "extParser":Landroid/content/res/XmlResourceParser;
    .local v9, "extParser":Landroid/content/res/XmlResourceParser;
    :catchall_6
    move-exception v0

    move-object v15, v9

    .end local v9    # "extParser":Landroid/content/res/XmlResourceParser;
    .restart local v15    # "extParser":Landroid/content/res/XmlResourceParser;
    goto :goto_1b

    .line 386
    .end local v15    # "extParser":Landroid/content/res/XmlResourceParser;
    .restart local v9    # "extParser":Landroid/content/res/XmlResourceParser;
    :catch_3
    move-exception v0

    move-object v15, v9

    .end local v9    # "extParser":Landroid/content/res/XmlResourceParser;
    .restart local v15    # "extParser":Landroid/content/res/XmlResourceParser;
    goto :goto_1a

    .line 215
    .end local v15    # "extParser":Landroid/content/res/XmlResourceParser;
    .restart local v9    # "extParser":Landroid/content/res/XmlResourceParser;
    :cond_2d
    :try_start_18
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string v2, "No android.nfc.cardemulation.off_host_apdu_service meta-data"

    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v7    # "si":Landroid/content/pm/ServiceInfo;
    .end local v8    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v9    # "extParser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    .end local p2    # "info":Landroid/content/pm/ResolveInfo;
    .end local p3    # "onHost":Z
    throw v0
    :try_end_18
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_18 .. :try_end_18} :catch_4
    .catchall {:try_start_18 .. :try_end_18} :catchall_7

    .line 389
    .restart local v7    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v8    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v9    # "extParser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/nfc/cardemulation/ApduServiceInfo;
    .restart local p1    # "pm":Landroid/content/pm/PackageManager;
    .restart local p2    # "info":Landroid/content/pm/ResolveInfo;
    .restart local p3    # "onHost":Z
    :catchall_7
    move-exception v0

    goto :goto_1b

    .line 386
    :catch_4
    move-exception v0

    .line 387
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_1a
    :try_start_19
    new-instance v2, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to create context for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .end local v7    # "si":Landroid/content/pm/ServiceInfo;
    .end local v8    # "parser":Landroid/content/res/XmlResourceParser;
    .end local v9    # "extParser":Landroid/content/res/XmlResourceParser;
    .end local p0    # "this":Landroid/nfc/cardemulation/ApduServiceInfo;
    .end local p1    # "pm":Landroid/content/pm/PackageManager;
    .end local p2    # "info":Landroid/content/pm/ResolveInfo;
    .end local p3    # "onHost":Z
    throw v2
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    .line 389
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v7    # "si":Landroid/content/pm/ServiceInfo;
    .restart local v8    # "parser":Landroid/content/res/XmlResourceParser;
    .restart local v9    # "extParser":Landroid/content/res/XmlResourceParser;
    .restart local p0    # "this":Landroid/nfc/cardemulation/ApduServiceInfo;
    .restart local p1    # "pm":Landroid/content/pm/PackageManager;
    .restart local p2    # "info":Landroid/content/pm/ResolveInfo;
    .restart local p3    # "onHost":Z
    :goto_1b
    if-eqz v8, :cond_2e

    invoke-interface {v8}, Landroid/content/res/XmlResourceParser;->close()V

    .line 390
    :cond_2e
    throw v0
.end method

.method public constructor blacklist <init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 16
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "onHost"    # Z
    .param p3, "description"    # Ljava/lang/String;
    .param p6, "requiresUnlock"    # Z
    .param p7, "bannerResource"    # I
    .param p8, "uid"    # I
    .param p9, "settingsActivityName"    # Ljava/lang/String;
    .param p10, "offHost"    # Ljava/lang/String;
    .param p11, "staticOffHost"    # Ljava/lang/String;
    .param p12, "isSelected"    # Z
    .param p13, "aidBased"    # Z
    .param p14, "samsungExt"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;ZII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZ)V"
        }
    .end annotation

    .line 155
    .local p4, "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .local p5, "dynamicAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p2

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    move/from16 v14, p13

    move/from16 v15, p14

    invoke-direct/range {v0 .. v15}, Landroid/nfc/cardemulation/ApduServiceInfo;-><init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 157
    return-void
.end method

.method public constructor greylist <init>(Landroid/content/pm/ResolveInfo;ZLjava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V
    .locals 14
    .param p1, "info"    # Landroid/content/pm/ResolveInfo;
    .param p2, "onHost"    # Z
    .param p3, "description"    # Ljava/lang/String;
    .param p6, "requiresUnlock"    # Z
    .param p7, "requiresScreenOn"    # Z
    .param p8, "bannerResource"    # I
    .param p9, "uid"    # I
    .param p10, "settingsActivityName"    # Ljava/lang/String;
    .param p11, "offHost"    # Ljava/lang/String;
    .param p12, "staticOffHost"    # Ljava/lang/String;
    .param p13, "isSelected"    # Z
    .param p14, "aidBased"    # Z
    .param p15, "samsungExt"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/ResolveInfo;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;ZZII",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZ)V"
        }
    .end annotation

    .line 166
    .local p4, "staticAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    .local p5, "dynamicAidGroups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAidBased:Z

    .line 148
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSamsungExt:Z

    .line 167
    move-object v2, p1

    iput-object v2, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    .line 168
    move-object/from16 v3, p3

    iput-object v3, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    .line 169
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    .line 170
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    .line 171
    move-object/from16 v4, p11

    iput-object v4, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOffHostName:Ljava/lang/String;

    .line 172
    move-object/from16 v5, p12

    iput-object v5, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticOffHostName:Ljava/lang/String;

    .line 173
    move/from16 v6, p2

    iput-boolean v6, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    .line 174
    move/from16 v7, p6

    iput-boolean v7, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    .line 175
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->isExceptionalSPay()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 176
    iput-boolean v1, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceScreenOn:Z

    move/from16 v1, p7

    goto :goto_0

    .line 178
    :cond_0
    move/from16 v1, p7

    iput-boolean v1, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceScreenOn:Z

    .line 180
    :goto_0
    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/nfc/cardemulation/AidGroup;

    .line 181
    .local v9, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    iget-object v10, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    iget-object v11, v9, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .end local v9    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    goto :goto_1

    .line 183
    :cond_1
    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/nfc/cardemulation/AidGroup;

    .line 184
    .restart local v9    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    iget-object v10, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    iget-object v11, v9, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .end local v9    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    goto :goto_2

    .line 186
    :cond_2
    move/from16 v8, p8

    iput v8, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    .line 187
    move/from16 v9, p9

    iput v9, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mUid:I

    .line 188
    move-object/from16 v10, p10

    iput-object v10, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    .line 191
    move/from16 v11, p13

    iput-boolean v11, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOtherServiceSelectionState:Z

    .line 192
    move/from16 v12, p14

    iput-boolean v12, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAidBased:Z

    .line 193
    move/from16 v13, p15

    iput-boolean v13, v0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSamsungExt:Z

    .line 195
    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .locals 1

    .line 738
    const/4 v0, 0x0

    return v0
.end method

.method public greylist-max-o dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " (Description: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 814
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ") (UID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 815
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 813
    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 816
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    if-eqz v0, :cond_0

    .line 817
    const-string v0, "    On Host Service"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    .line 819
    :cond_0
    const-string v0, "    Off-host Service"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 820
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "        Current off-host SE:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOffHostName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " static off-host SE:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticOffHostName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 824
    :goto_0
    const-string v0, "    Static AID groups:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 825
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "            AID: "

    const-string v4, "(selected: "

    const-string v5, "        Category: "

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/AidGroup;

    .line 826
    .local v2, "group":Landroid/nfc/cardemulation/AidGroup;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v2, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOtherServiceSelectionState:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 827
    iget-object v4, v2, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 828
    .local v5, "aid":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 829
    .end local v5    # "aid":Ljava/lang/String;
    goto :goto_2

    .line 830
    .end local v2    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_1
    goto :goto_1

    .line 831
    :cond_2
    const-string v0, "    Dynamic AID groups:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 832
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/AidGroup;

    .line 833
    .restart local v2    # "group":Landroid/nfc/cardemulation/AidGroup;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOtherServiceSelectionState:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 834
    iget-object v6, v2, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 835
    .local v7, "aid":Ljava/lang/String;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p2, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 836
    .end local v7    # "aid":Ljava/lang/String;
    goto :goto_4

    .line 837
    .end local v2    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_3
    goto :goto_3

    .line 838
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Settings Activity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 839
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Requires Device Unlock: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    Requires Device ScreenOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 841
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    AID-based: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAidBased:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 842
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "    EXT: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSamsungExt:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 843
    return-void
.end method

.method public blacklist dumpDebug(Landroid/util/proto/ProtoOutputStream;)V
    .locals 6
    .param p1, "proto"    # Landroid/util/proto/ProtoOutputStream;

    .line 887
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    const-wide v1, 0x10b00000001L

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 888
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getDescription()Ljava/lang/String;

    move-result-object v0

    const-wide v1, 0x10900000002L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 889
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    const-wide v1, 0x10800000003L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 890
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    if-nez v0, :cond_0

    .line 891
    const-wide v0, 0x10900000004L

    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOffHostName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 892
    const-wide v0, 0x10900000005L

    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticOffHostName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 894
    :cond_0
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-wide v2, 0x20b00000006L

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/AidGroup;

    .line 895
    .local v1, "group":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 896
    .local v2, "token":J
    invoke-virtual {v1, p1}, Landroid/nfc/cardemulation/AidGroup;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 897
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 898
    .end local v1    # "group":Landroid/nfc/cardemulation/AidGroup;
    .end local v2    # "token":J
    goto :goto_0

    .line 899
    :cond_1
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/nfc/cardemulation/AidGroup;

    .line 900
    .restart local v1    # "group":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v4

    .line 901
    .local v4, "token":J
    invoke-virtual {v1, p1}, Landroid/nfc/cardemulation/AidGroup;->dump(Landroid/util/proto/ProtoOutputStream;)V

    .line 902
    invoke-virtual {p1, v4, v5}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 903
    .end local v1    # "group":Landroid/nfc/cardemulation/AidGroup;
    .end local v4    # "token":J
    goto :goto_1

    .line 904
    :cond_2
    const-wide v0, 0x10900000008L

    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 905
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 721
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 722
    :cond_0
    instance-of v1, p1, Landroid/nfc/cardemulation/ApduServiceInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 723
    :cond_1
    move-object v1, p1

    check-cast v1, Landroid/nfc/cardemulation/ApduServiceInfo;

    .line 725
    .local v1, "thatService":Landroid/nfc/cardemulation/ApduServiceInfo;
    invoke-virtual {v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 726
    invoke-virtual {v1}, Landroid/nfc/cardemulation/ApduServiceInfo;->getUid()I

    move-result v3

    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getUid()I

    move-result v4

    if-ne v3, v4, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    .line 725
    :goto_0
    return v0
.end method

.method public greylist-max-o getAidGroups()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/nfc/cardemulation/AidGroup;",
            ">;"
        }
    .end annotation

    .line 535
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 536
    .local v0, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 537
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/AidGroup;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/AidGroup;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 538
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/AidGroup;>;"
    goto :goto_0

    .line 539
    :cond_0
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 540
    .restart local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/AidGroup;>;"
    iget-object v3, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 543
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/nfc/cardemulation/AidGroup;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 545
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroid/nfc/cardemulation/AidGroup;>;"
    :cond_1
    goto :goto_1

    .line 546
    :cond_2
    return-object v0
.end method

.method public greylist-max-o getAids()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 481
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 482
    .local v0, "aids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/AidGroup;

    .line 483
    .local v2, "group":Landroid/nfc/cardemulation/AidGroup;
    iget-object v3, v2, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 484
    .end local v2    # "group":Landroid/nfc/cardemulation/AidGroup;
    goto :goto_0

    .line 485
    :cond_0
    return-object v0
.end method

.method public greylist-max-o getCategoryForAid(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "aid"    # Ljava/lang/String;

    .line 555
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v0

    .line 556
    .local v0, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/AidGroup;

    .line 557
    .local v2, "group":Landroid/nfc/cardemulation/AidGroup;
    iget-object v3, v2, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 558
    iget-object v1, v2, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    return-object v1

    .line 560
    .end local v2    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_0
    goto :goto_0

    .line 561
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist getCategoryForPrefixAid(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "aid"    # Ljava/lang/String;

    .line 566
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v0

    .line 567
    .local v0, "groups":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/nfc/cardemulation/AidGroup;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/AidGroup;

    .line 568
    .local v2, "group":Landroid/nfc/cardemulation/AidGroup;
    iget-object v3, v2, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 569
    .local v4, "a":Ljava/lang/String;
    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 570
    const/4 v5, 0x0

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 571
    .local v5, "newAid":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 572
    iget-object v1, v2, Landroid/nfc/cardemulation/AidGroup;->category:Ljava/lang/String;

    return-object v1

    .line 575
    .end local v4    # "a":Ljava/lang/String;
    .end local v5    # "newAid":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 576
    .end local v2    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_1
    goto :goto_0

    .line 577
    :cond_2
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist-max-o getComponent()Landroid/content/ComponentName;
    .locals 3

    .line 463
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public greylist getDescription()Ljava/lang/String;
    .locals 1

    .line 608
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getDynamicAidGroupForCategory(Ljava/lang/String;)Landroid/nfc/cardemulation/AidGroup;
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .line 517
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/nfc/cardemulation/AidGroup;

    return-object v0
.end method

.method public blacklist getOffHostSecureElement()Ljava/lang/String;
    .locals 1

    .line 468
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOffHostName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getPrefixAids()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 490
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 491
    .local v0, "prefixAids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/AidGroup;

    .line 492
    .local v2, "group":Landroid/nfc/cardemulation/AidGroup;
    iget-object v3, v2, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 493
    .local v4, "aid":Ljava/lang/String;
    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 494
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 496
    .end local v4    # "aid":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 497
    .end local v2    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_1
    goto :goto_0

    .line 498
    :cond_2
    return-object v0
.end method

.method public greylist getSettingsActivityName()Ljava/lang/String;
    .locals 1

    .line 698
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public greylist-max-o getSubsetAids()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 502
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 503
    .local v0, "subsetAids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getAidGroups()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/AidGroup;

    .line 504
    .local v2, "group":Landroid/nfc/cardemulation/AidGroup;
    iget-object v3, v2, Landroid/nfc/cardemulation/AidGroup;->aids:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 505
    .local v4, "aid":Ljava/lang/String;
    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 506
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 508
    .end local v4    # "aid":Ljava/lang/String;
    :cond_0
    goto :goto_1

    .line 509
    .end local v2    # "group":Landroid/nfc/cardemulation/AidGroup;
    :cond_1
    goto :goto_0

    .line 510
    :cond_2
    return-object v0
.end method

.method public greylist getUid()I
    .locals 1

    .line 614
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mUid:I

    return v0
.end method

.method public greylist-max-o hasCategory(Ljava/lang/String;)Z
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .line 582
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 583
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->isAidBased()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "other"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 582
    :goto_1
    return v0
.end method

.method public whitelist test-api hashCode()I
    .locals 1

    .line 732
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->hashCode()I

    move-result v0

    return v0
.end method

.method public blacklist isAidBased()Z
    .locals 1

    .line 688
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAidBased:Z

    return v0
.end method

.method public blacklist isExceptionalSPay()Z
    .locals 6

    .line 862
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/4 v1, 0x0

    const/16 v2, 0x1f

    if-lt v0, v2, :cond_0

    .line 863
    return v1

    .line 866
    :cond_0
    const-string v0, "com.samsung.android.spayfw.core.hce.SPayHCEService"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    .line 869
    .local v0, "exceptionPackages":[Ljava/lang/String;
    array-length v2, v0

    move v3, v1

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    .line 870
    .local v4, "serviceName":Ljava/lang/String;
    iget-object v5, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v5, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 871
    const/4 v1, 0x1

    return v1

    .line 869
    .end local v4    # "serviceName":Ljava/lang/String;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 874
    :cond_2
    return v1
.end method

.method public greylist isOnHost()Z
    .locals 1

    .line 589
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    return v0
.end method

.method public blacklist isSamsungExtensionService()Z
    .locals 1

    .line 857
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSamsungExt:Z

    return v0
.end method

.method public blacklist isSelectedOtherService()Z
    .locals 1

    .line 852
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOtherServiceSelectionState:Z

    return v0
.end method

.method public greylist-max-o loadAppLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 2
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 651
    :try_start_0
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    const/16 v1, 0x80

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 653
    :catch_0
    move-exception v0

    .line 654
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist loadBanner(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 677
    :try_start_0
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v0

    .line 678
    .local v0, "res":Landroid/content/res/Resources;
    iget v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 679
    .local v1, "banner":Landroid/graphics/drawable/Drawable;
    return-object v1

    .line 680
    .end local v0    # "res":Landroid/content/res/Resources;
    .end local v1    # "banner":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 681
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "ApduServiceInfo"

    const-string v2, "Could not load banner."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    .end local v0    # "e":Ljava/lang/Throwable;
    const/4 v0, 0x0

    return-object v0
.end method

.method public greylist-max-o loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 660
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .line 645
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public greylist-max-o removeDynamicAidGroupForCategory(Ljava/lang/String;)Z
    .locals 1
    .param p1, "category"    # Ljava/lang/String;

    .line 522
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist requiresScreenOn()Z
    .locals 1

    .line 602
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceScreenOn:Z

    return v0
.end method

.method public greylist requiresUnlock()Z
    .locals 1

    .line 595
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    return v0
.end method

.method public blacklist setAidBased(Z)V
    .locals 0
    .param p1, "aidBased"    # Z

    .line 693
    iput-boolean p1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAidBased:Z

    .line 694
    return-void
.end method

.method public blacklist setOffHostSecureElement(Ljava/lang/String;)V
    .locals 0
    .param p1, "offHost"    # Ljava/lang/String;

    .line 632
    iput-object p1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOffHostName:Ljava/lang/String;

    .line 633
    return-void
.end method

.method public greylist-max-o setOrReplaceDynamicAidGroup(Landroid/nfc/cardemulation/AidGroup;)V
    .locals 2
    .param p1, "aidGroup"    # Landroid/nfc/cardemulation/AidGroup;

    .line 619
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/nfc/cardemulation/AidGroup;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 620
    return-void
.end method

.method public blacklist setOtherServiceState(Z)V
    .locals 0
    .param p1, "selected"    # Z

    .line 847
    iput-boolean p1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOtherServiceSelectionState:Z

    .line 848
    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .locals 4

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "ApduService: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 704
    .local v0, "out":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Landroid/nfc/cardemulation/ApduServiceInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 705
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", UID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mUid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 706
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", description: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 707
    const-string v1, ", Static AID Groups: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/AidGroup;

    .line 709
    .local v2, "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v2}, Landroid/nfc/cardemulation/AidGroup;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 710
    .end local v2    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    goto :goto_0

    .line 711
    :cond_0
    const-string v1, ", Dynamic AID Groups: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 712
    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/nfc/cardemulation/AidGroup;

    .line 713
    .restart local v2    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    invoke-virtual {v2}, Landroid/nfc/cardemulation/AidGroup;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 714
    .end local v2    # "aidGroup":Landroid/nfc/cardemulation/AidGroup;
    goto :goto_1

    .line 715
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public blacklist unsetOffHostSecureElement()V
    .locals 1

    .line 640
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticOffHostName:Ljava/lang/String;

    iput-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOffHostName:Ljava/lang/String;

    .line 641
    return-void
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 744
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mService:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/ResolveInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 745
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDescription:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 746
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOnHost:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 747
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOffHostName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 748
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticOffHostName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 749
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 750
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 751
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mStaticAidGroups:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 753
    :cond_0
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 754
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 755
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mDynamicAidGroups:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 757
    :cond_1
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceUnlock:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 758
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mRequiresDeviceScreenOn:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 759
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mBannerResourceId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 760
    iget v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mUid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 761
    iget-object v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSettingsActivityName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 763
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mOtherServiceSelectionState:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 764
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mAidBased:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 765
    iget-boolean v0, p0, Landroid/nfc/cardemulation/ApduServiceInfo;->mSamsungExt:Z

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 766
    return-void
.end method
