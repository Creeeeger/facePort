.class public Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;
.super Ljava/lang/Object;
.source "qb/98004394 196cb3c588f4bce8f34d9a4b22ef87dca56ab51c1d488078a331bdfa0f5f580b"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;,
        Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;
    }
.end annotation


# static fields
.field public static final CUSTOM_LAYER:I = 0x2

.field public static final DEFAULT_ALPHA_LEVEL:F = 1.0f

.field public static final DEFAULT_LAYER:I = 0x1

.field public static final EMERGENCY_PHONE_LAYER:I = 0x3

.field public static final ERROR_BAD_STATE:I = -0x6

.field public static final ERROR_FAILED:I = -0x4

.field public static final ERROR_NONE:I = 0x0

.field public static final ERROR_NOT_ALLOWED:I = -0x1

.field public static final ERROR_NOT_READY:I = -0x5

.field public static final ERROR_NOT_SUPPORTED:I = -0x3

.field public static final ERROR_PERMISSION_DENIED:I = -0x2

.field public static final ERROR_UNKNOWN:I = -0x7d0

.field public static final TAG:Ljava/lang/String; = "LSO_LockscreenOverlay"

.field public static gLSO:Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

.field public static final mSync:Ljava/lang/Object;


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mContextInfo:Lcom/samsung/android/knox/ContextInfo;

.field public final mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

.field public mMiscService:Lcom/samsung/android/knox/IMiscPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mSync:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-static {p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/lockscreen/LSOInterface;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    return-void
.end method

.method public static createInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;
    .locals 1

    new-instance v0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    return-object v0
.end method

.method public static createLSOItem_EmergencyPhone(Landroid/content/Context;Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;)Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .locals 5

    new-instance p0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-direct {p0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;-><init>()V

    iget v0, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->topPosition:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-lez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;

    iget v3, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->topPosition:I

    int-to-float v3, v3

    invoke-direct {v0, v2, v1, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    :cond_0
    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;

    invoke-direct {v0}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;-><init>()V

    const-string v3, "com.samsung.android.knox.lockscreen.EmergencyPhoneWidget"

    invoke-virtual {v0, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;->setWidget(Ljava/lang/String;)V

    const-string v3, "epw:phoneNumber"

    iget-object v4, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->text:Ljava/lang/String;

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1

    const-string v3, "android:text"

    iget-object v4, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->text:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "android:maxLines"

    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/Integer;)V

    goto :goto_0

    :cond_1
    iget-boolean v3, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->showDefaultText:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "epw:showText"

    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/Boolean;)V

    :goto_0
    iget-object v3, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->icon:Ljava/lang/String;

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_2

    const-string v3, "android:src"

    iget-object v4, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->icon:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v4, "android:orientation"

    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-boolean v3, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->showBackground:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "epw:showBG"

    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget v3, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->topPosition:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "android:topPos"

    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v3, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->bottomPosition:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const-string v4, "android:bottomPos"

    invoke-virtual {v0, v4, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/Integer;)V

    iget v3, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->gravity:I

    invoke-virtual {v0, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setGravity(I)V

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setDimension(II)V

    iget v3, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->bottomPosition:I

    iget v4, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->topPosition:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setWeight(F)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    iget v0, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->bottomPosition:I

    const/16 v3, 0x64

    if-ge v0, v3, :cond_3

    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;

    iget p1, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->bottomPosition:I

    sub-int/2addr v3, p1

    int-to-float p1, v3

    invoke-direct {v0, v2, v1, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;-><init>(IIF)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v0, "android:alpha"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/Float;)V

    const/16 p1, 0x33

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setGravity(I)V

    return-object p0
.end method

.method public static createLSOItem_EmergencyPhone(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .locals 4

    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-direct {v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;-><init>()V

    new-instance v1, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;

    const/16 v2, 0x14

    invoke-static {p0, v2}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->convertDipToPixel(Landroid/content/Context;I)I

    move-result v2

    const/4 v3, -0x1

    invoke-direct {v1, v3, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;-><init>(II)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    new-instance v1, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;

    invoke-direct {v1}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;-><init>()V

    const-string v2, "com.samsung.android.knox.lockscreen.EmergencyPhoneWidget"

    invoke-virtual {v1, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;->setWidget(Ljava/lang/String;)V

    const-string v2, "epw:phoneNumber"

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v2, "android:orientation"

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/Boolean;)V

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "epw:showText"

    invoke-virtual {v1, v2, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/Boolean;)V

    const/16 p1, 0x64

    invoke-static {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->convertDipToPixel(Landroid/content/Context;I)I

    move-result p1

    const/16 v2, 0xc8

    invoke-static {p0, v2}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->convertDipToPixel(Landroid/content/Context;I)I

    move-result p0

    invoke-virtual {v1, p1, p0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setDimension(II)V

    const/16 p0, 0x33

    invoke-virtual {v1, p0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setGravity(I)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "android:alpha"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/Float;)V

    invoke-virtual {v0, p0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setGravity(I)V

    return-object v0
.end method

.method public static createLSOItem_StyleEnterprise(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    const/16 v2, 0xc7

    const/16 v3, 0xd1

    const/16 v4, 0xc0

    invoke-static {v4, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    const v3, 0x1040a10

    invoke-static {v0, v3}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->getResourceString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x1040a11

    invoke-static {v0, v4}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->getResourceString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x1040a0f

    invoke-static {v0, v5}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->getResourceString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-direct {v6}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;-><init>()V

    new-instance v7, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;

    const/4 v8, -0x1

    const/4 v9, 0x0

    const/high16 v10, 0x41200000    # 10.0f

    invoke-direct {v7, v8, v9, v10}, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;-><init>(IIF)V

    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    new-instance v7, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-direct {v7}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;-><init>()V

    new-instance v11, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-direct {v11}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;-><init>()V

    new-instance v12, Lcom/samsung/android/knox/lockscreen/LSOItemText;

    invoke-direct {v12, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemText;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x11

    invoke-virtual {v12, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setGravity(I)V

    invoke-virtual {v11, v12}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    const/4 v12, -0x2

    if-eqz v1, :cond_0

    new-instance v13, Lcom/samsung/android/knox/lockscreen/LSOItemImage;

    invoke-direct {v13, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;-><init>(Ljava/lang/String;)V

    invoke-virtual {v13, v8, v12}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setDimension(II)V

    const/16 v1, 0x4b

    invoke-static {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->convertDipToPixel(Landroid/content/Context;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "android:maxHeight"

    invoke-virtual {v13, v1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v11, v13}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    :cond_0
    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOItemText;

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->LARGE:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextSize(Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextStyle(I)V

    invoke-virtual {v0, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setGravity(I)V

    const/4 v13, 0x4

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    const-string v15, "android:maxLines"

    invoke-virtual {v0, v15, v14}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v11, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOItemText;

    invoke-direct {v0, v4}, Lcom/samsung/android/knox/lockscreen/LSOItemText;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextStyle(I)V

    invoke-virtual {v0, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setGravity(I)V

    invoke-virtual {v11, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    invoke-virtual {v11, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setBgColor(I)V

    invoke-virtual {v11, v8, v12}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setDimension(II)V

    invoke-virtual {v7, v11}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    invoke-virtual {v7, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setGravity(I)V

    const/high16 v0, 0x42300000    # 44.0f

    invoke-virtual {v7, v8, v9, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setDimension(IIF)V

    invoke-virtual {v6, v7}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;

    invoke-direct {v0, v8, v9, v10}, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;-><init>(IIF)V

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-direct {v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;-><init>()V

    new-instance v4, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-direct {v4}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;-><init>()V

    sget-object v7, Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;->HORIZONTAL:Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;

    invoke-virtual {v4, v7}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->setOrientation(Lcom/samsung/android/knox/lockscreen/LSOItemContainer$ORIENTATION;)V

    new-instance v7, Lcom/samsung/android/knox/lockscreen/LSOItemText;

    invoke-direct {v7, v5}, Lcom/samsung/android/knox/lockscreen/LSOItemText;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v9, v12}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setDimension(II)V

    const v5, 0x3f19999a    # 0.6f

    invoke-virtual {v7, v5}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setWeight(F)V

    sget-object v5, Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;->SMALL:Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;

    invoke-virtual {v7, v5}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextSize(Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;)V

    invoke-virtual {v7, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextStyle(I)V

    invoke-virtual {v7, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setGravity(I)V

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v15, v10}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v4, v7}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    new-instance v7, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-direct {v7}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;-><init>()V

    invoke-virtual {v7, v9, v12}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setDimension(II)V

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-virtual {v7, v10}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setWeight(F)V

    invoke-virtual {v7, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setGravity(I)V

    new-instance v10, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-direct {v10}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;-><init>()V

    invoke-virtual {v10, v12, v12}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setDimension(II)V

    invoke-virtual {v10, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setGravity(I)V

    new-instance v11, Lcom/samsung/android/knox/lockscreen/LSOItemText;

    move-object/from16 v13, p3

    invoke-direct {v11, v13}, Lcom/samsung/android/knox/lockscreen/LSOItemText;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextSize(Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;)V

    invoke-virtual {v11, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextStyle(I)V

    const/4 v13, 0x3

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v11, v15, v13}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v10, v11}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    new-instance v11, Lcom/samsung/android/knox/lockscreen/LSOItemText;

    move-object/from16 v13, p4

    invoke-direct {v11, v13}, Lcom/samsung/android/knox/lockscreen/LSOItemText;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v5}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextSize(Lcom/samsung/android/knox/lockscreen/LSOItemText$LSOTextSize;)V

    invoke-virtual {v11, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemText;->setTextStyle(I)V

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v5, "android:singleLine"

    invoke-virtual {v11, v5, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setAttribute(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-virtual {v10, v11}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    invoke-virtual {v7, v10}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    invoke-virtual {v4, v7}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    invoke-virtual {v4, v8, v12}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setDimension(II)V

    invoke-virtual {v4, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setBgColor(I)V

    invoke-virtual {v4, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setGravity(I)V

    invoke-virtual {v0, v4}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    const/16 v1, 0x30

    invoke-virtual {v0, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setGravity(I)V

    const/high16 v1, 0x41f00000    # 30.0f

    invoke-virtual {v0, v8, v9, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setDimension(IIF)V

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-direct {v0, v8, v9, v1}, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;-><init>(IIF)V

    invoke-virtual {v6, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    return-object v6
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;
    .locals 3

    sget-object v0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->gLSO:Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    if-nez v1, :cond_0

    if-eqz p0, :cond_0

    new-instance v1, Lcom/samsung/android/knox/ContextInfo;

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-direct {v1, v2}, Lcom/samsung/android/knox/ContextInfo;-><init>(I)V

    new-instance v2, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v2, v1, p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    sput-object v2, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->gLSO:Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->gLSO:Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static getInstance(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;
    .locals 2

    sget-object v0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->gLSO:Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v1, p0, p1}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;-><init>(Lcom/samsung/android/knox/ContextInfo;Landroid/content/Context;)V

    sput-object v1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->gLSO:Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :cond_0
    :goto_0
    sget-object p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->gLSO:Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;

    monitor-exit v0

    return-object p0

    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static parseLSOItem_EmergencyPhoneInfo(Landroid/content/Context;Lcom/samsung/android/knox/lockscreen/LSOItemData;)Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;
    .locals 5

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getType()B

    move-result p0

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eq p0, v0, :cond_0

    return-object v1

    :cond_0
    check-cast p1, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getNumItems()I

    move-result p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p0, :cond_2

    invoke-virtual {p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->getItem(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getType()B

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_1

    check-cast v2, Lcom/samsung/android/knox/lockscreen/LSOItemWidget;

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move-object v2, v1

    :goto_1
    if-nez v2, :cond_3

    return-object v1

    :cond_3
    invoke-virtual {v2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getAttrs()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object p0

    if-nez p0, :cond_4

    return-object v1

    :cond_4
    new-instance p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;

    const-string v0, ""

    invoke-direct {p1, v0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getGravity()I

    move-result v0

    iput v0, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->gravity:I

    const-string v0, "epw:phoneNumber"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->phoneNumber:Ljava/lang/String;

    :cond_5
    const-string v0, "android:text"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->text:Ljava/lang/String;

    :cond_6
    const-string v0, "android:src"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->icon:Ljava/lang/String;

    :cond_7
    const-string v0, "android:topPos"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->topPosition:I

    :cond_8
    const-string v0, "android:bottomPos"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->bottomPosition:I

    :cond_9
    const-string v0, "epw:showBG"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->showBackground:Z

    :cond_a
    const-string v0, "epw:showText"

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    iput-boolean p0, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->showDefaultText:Z

    :cond_b
    return-object p1
.end method


# virtual methods
.method public canConfigure()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->canConfigure(I)Z

    move-result p0

    return p0
.end method

.method public changeLockScreenString(Ljava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "LockscreenOverlay.changeLockScreenString"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->getMiscService()Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0, p1}, Lcom/samsung/android/knox/IMiscPolicy;->changeLockScreenString(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    const-string p1, "LSO_LockscreenOverlay"

    const-string v0, "Failed changeLockScreenString"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public configure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "LockscreenOverlay.configure(String, String, String, String)"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContext:Landroid/content/Context;

    const-string v1, "logo"

    invoke-static {v0, p2, v1}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->copyFileToDataLocalDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_0

    const-string p0, "LSO_LockscreenOverlay"

    const-string p1, "Failed to copy enterprise logo"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x4

    return p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->createLSOItem_StyleEnterprise(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->setData(Lcom/samsung/android/knox/lockscreen/LSOItemData;)I

    move-result p0

    return p0

    :cond_1
    const/16 p0, -0x7d0

    return p0

    :cond_2
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "Name and Address cannot be null"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public configure([Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;)I
    .locals 9

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "LockscreenOverlay.configure(LSOImage[])"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    if-eqz p1, :cond_7

    array-length v0, p1

    if-eqz v0, :cond_7

    array-length v0, p1

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    aget-object v2, p1, v1

    if-eqz v2, :cond_6

    iget v2, v2, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->topPosition:I

    if-ltz v2, :cond_6

    aget-object v2, p1, v0

    iget v3, v2, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->bottomPosition:I

    const/16 v4, 0x64

    if-gt v3, v4, :cond_6

    iget v2, v2, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->topPosition:I

    if-le v3, v2, :cond_6

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    if-eqz v3, :cond_0

    iget v5, v3, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->bottomPosition:I

    iget v3, v3, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->topPosition:I

    if-le v5, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    aget-object v3, p1, v2

    iget v3, v3, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->topPosition:I

    if-gt v5, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "Invalid argument list - Item[i] top > bottom or Item[i+1] top < Item[i] bottom"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;

    invoke-direct {v0}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;-><init>()V

    const/4 v2, -0x1

    invoke-virtual {v0, v2, v2}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setDimension(II)V

    move v3, v1

    move v5, v3

    :goto_1
    array-length v6, p1

    if-ge v3, v6, :cond_4

    aget-object v6, p1, v3

    iget v6, v6, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->topPosition:I

    if-ge v5, v6, :cond_2

    new-instance v6, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;

    aget-object v7, p1, v3

    iget v7, v7, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->topPosition:I

    sub-int/2addr v7, v5

    int-to-float v5, v7

    invoke-direct {v6, v2, v1, v5}, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;-><init>(IIF)V

    invoke-virtual {v0, v6}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    :cond_2
    iget-object v5, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContext:Landroid/content/Context;

    aget-object v6, p1, v3

    iget-object v6, v6, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->filePath:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "lso"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->copyFileToDataLocalDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_3

    const-string p0, "LSO_LockscreenOverlay"

    const-string p1, "Failed to copy images"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x4

    return p0

    :cond_3
    new-instance v6, Lcom/samsung/android/knox/lockscreen/LSOItemImage;

    invoke-direct {v6, v5}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;-><init>(Ljava/lang/String;)V

    aget-object v5, p1, v3

    iget v7, v5, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->bottomPosition:I

    iget v5, v5, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->topPosition:I

    sub-int/2addr v7, v5

    int-to-float v5, v7

    invoke-virtual {v6, v2, v1, v5}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setDimension(IIF)V

    aget-object v5, p1, v3

    iget-object v5, v5, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->scaleType:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v6, v5}, Lcom/samsung/android/knox/lockscreen/LSOItemImage;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v0, v6}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    aget-object v5, p1, v3

    iget v5, v5, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOImage;->bottomPosition:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    if-ge v5, v4, :cond_5

    new-instance p1, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;

    sub-int/2addr v4, v5

    int-to-float v3, v4

    invoke-direct {p1, v2, v1, v3}, Lcom/samsung/android/knox/lockscreen/LSOItemSpace;-><init>(IIF)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemContainer;->addItem(Lcom/samsung/android/knox/lockscreen/LSOItemData;)Z

    :cond_5
    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->setData(Lcom/samsung/android/knox/lockscreen/LSOItemData;)I

    move-result p0

    return p0

    :cond_6
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "Invalid argument list - Item[0] top position is less than 0, Item[last_index] is greater than 100, or position of Item[0] > Item[last_index]"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_7
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "Invalid argument list - List is empty"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getAlpha()F
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->getPreferences()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v2, "android:alpha"

    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->getAsFloat(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    :cond_0
    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_0
    return v0
.end method

.method public getCurrentLockScreenString()Ljava/lang/String;
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->getMiscService()Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    invoke-interface {v0, p0}, Lcom/samsung/android/knox/IMiscPolicy;->getCurrentLockScreenString(Lcom/samsung/android/knox/ContextInfo;)Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "LSO_LockscreenOverlay"

    const-string v1, "Failed getCurrentLockScreenString!!!"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getData()Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->getData()Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object p0

    return-object p0
.end method

.method public getData(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->getData(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object p0

    return-object p0
.end method

.method public getEmergencyPhone()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->getData(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->getId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public getEmergencyPhoneInfo()Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;
    .locals 1

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->getData(I)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->parseLSOItem_EmergencyPhoneInfo(Landroid/content/Context;Lcom/samsung/android/knox/lockscreen/LSOItemData;)Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getMiscService()Lcom/samsung/android/knox/IMiscPolicy;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    if-nez v0, :cond_0

    const-string/jumbo v0, "misc_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/knox/IMiscPolicy$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/android/knox/IMiscPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mMiscService:Lcom/samsung/android/knox/IMiscPolicy;

    return-object p0
.end method

.method public isConfigured()Z
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->isConfigured(I)Z

    move-result p0

    return p0
.end method

.method public removeEmergencyPhone()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "LockscreenOverlay.removeEmergencyPhone"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->resetData(I)V

    return-void
.end method

.method public resetAll()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "LockscreenOverlay.resetAll"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    invoke-virtual {v0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->reset()V

    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->resetWallpaper()V

    return-void
.end method

.method public resetData(I)V
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    invoke-virtual {p0, p1}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->resetData(I)V

    return-void
.end method

.method public resetOverlay()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "LockscreenOverlay.resetOverlay"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->resetData()V

    return-void
.end method

.method public resetWallpaper()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "LockscreenOverlay.resetWallpaper"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    invoke-virtual {p0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->resetWallpaper()V

    return-void
.end method

.method public setAlpha(F)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "LockscreenOverlay.setAlpha"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    invoke-virtual {v0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->getPreferences()Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;

    invoke-direct {v0}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;-><init>()V

    :cond_0
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    const-string v1, "android:alpha"

    invoke-virtual {v0, v1, p1}, Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;->put(Ljava/lang/String;Ljava/lang/Float;)V

    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    invoke-virtual {p0, v0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->setPreferences(Lcom/samsung/android/knox/lockscreen/LSOAttributeSet;)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "Alpha values must be in between 0 to 1"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setData(Lcom/samsung/android/knox/lockscreen/LSOItemData;)I
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->openFileDescriptor()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->setData(Lcom/samsung/android/knox/lockscreen/LSOItemData;)I

    move-result v0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->closeFileDescriptor()V

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->cleanDataLocalDirectory(Landroid/content/Context;)V

    return v0
.end method

.method public setData(Lcom/samsung/android/knox/lockscreen/LSOItemData;I)I
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->openFileDescriptor()V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->setData(Lcom/samsung/android/knox/lockscreen/LSOItemData;I)I

    move-result p0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->closeFileDescriptor()V

    :cond_1
    return p0
.end method

.method public setEmergencyPhone(Ljava/lang/String;)I
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "LockscreenOverlay.setEmergencyPhone"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->createLSOItem_EmergencyPhone(Landroid/content/Context;Ljava/lang/String;)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setId(Ljava/lang/String;)V

    const/4 p1, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->setData(Lcom/samsung/android/knox/lockscreen/LSOItemData;I)I

    move-result p0

    return p0

    :cond_0
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "Emergency/Support phone cannot be null"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setEmergencyPhoneInfo(Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;)I
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "LockscreenOverlay.setEmergencyPhoneInfo"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->phoneNumber:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->topPosition:I

    if-ltz v0, :cond_1

    iget v1, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->bottomPosition:I

    const/16 v2, 0x64

    if-gt v1, v2, :cond_1

    if-le v1, v0, :cond_1

    iget-object v0, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->icon:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContext:Landroid/content/Context;

    const-string v2, "epw"

    invoke-static {v1, v0, v2}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->copyFileToDataLocalDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->icon:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string p0, "LSO_LockscreenOverlay"

    const-string p1, "Failed to copy icon"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x4

    return p0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->createLSOItem_EmergencyPhone(Landroid/content/Context;Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;)Lcom/samsung/android/knox/lockscreen/LSOItemData;

    move-result-object v0

    iget-object p1, p1, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay$LSOEmergencyPhoneInfo;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/samsung/android/knox/lockscreen/LSOItemData;->setId(Ljava/lang/String;)V

    const/4 p1, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->setData(Lcom/samsung/android/knox/lockscreen/LSOItemData;I)I

    move-result p0

    return p0

    :cond_1
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "Invalid argument list"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "Emergency/Support phone cannot be null"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public setWallpaper(Ljava/lang/String;)I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContextInfo:Lcom/samsung/android/knox/ContextInfo;

    const-string v1, "LockscreenOverlay.setWallpaper"

    invoke-static {v0, v1}, Lcom/samsung/android/knox/license/EnterpriseLicenseManager;->log(Lcom/samsung/android/knox/ContextInfo;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wp"

    invoke-static {v0, p1, v1}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->copyFileToDataLocalDirectory(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, -0x4

    const-string v1, "LSO_LockscreenOverlay"

    if-nez p1, :cond_0

    const-string p0, "Failed to copy wallaper"

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    :try_start_0
    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    iget-object v2, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mLSO:Lcom/samsung/android/knox/lockscreen/LSOInterface;

    invoke-virtual {v2, p1, v0}, Lcom/samsung/android/knox/lockscreen/LSOInterface;->setWallpaper(Ljava/lang/String;Landroid/os/ParcelFileDescriptor;)I

    move-result p1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    const-string v0, "Failed to close file descriptor"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/knox/lockscreen/LockscreenOverlay;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/samsung/android/knox/lockscreen/LSOUtils;->cleanDataLocalDirectory(Landroid/content/Context;)V

    return p1

    :catch_1
    const-string p0, "Error: file not found"

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    new-instance p0, Ljava/security/InvalidParameterException;

    const-string p1, "Wallpaper cannot be null"

    invoke-direct {p0, p1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
