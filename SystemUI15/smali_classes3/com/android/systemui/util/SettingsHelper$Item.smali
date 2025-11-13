.class Lcom/android/systemui/util/SettingsHelper$Item;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# instance fields
.field mCachedIntegrity:Z

.field mDataType:Ljava/lang/String;

.field mDef:Ljava/lang/Object;

.field mFloatValue:F

.field mForUser:Ljava/lang/String;

.field mIntValue:I

.field mIsUserAll:Z

.field mKey:Ljava/lang/String;

.field mSettingType:Ljava/lang/String;

.field mStringValue:Ljava/lang/String;

.field mUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/systemui/util/SettingsHelper;


# direct methods
.method public static bridge synthetic -$$Nest$mgetKey(Lcom/android/systemui/util/SettingsHelper$Item;)Ljava/lang/String;
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getKey()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 8

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/util/SettingsHelper$Item;-><init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZZ)V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/util/SettingsHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->this$0:Lcom/android/systemui/util/SettingsHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mUri:Landroid/net/Uri;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mCachedIntegrity:Z

    iput-object p2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mSettingType:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mKey:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    iput-object p5, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDef:Ljava/lang/Object;

    if-eqz p6, :cond_0

    const-string p1, "ForUser"

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mForUser:Ljava/lang/String;

    iput-boolean p7, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mIsUserAll:Z

    const-string p1, "Global"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "Secure"

    iget-object p2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mSettingType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "System"

    iget-object p2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mSettingType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid setting type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mKey:Ljava/lang/String;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_5

    const-string p1, "Int"

    iget-object p2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "String"

    iget-object p2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "Float"

    iget-object p2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid data type"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mKey:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/systemui/util/SettingsHelper$Item;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mUri:Landroid/net/Uri;

    return-void

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Invalid setting key"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private getKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method private getUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 4

    const-string v0, "android.provider.Settings$"

    iget-object v1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mUri:Landroid/net/Uri;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mSettingType:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    const-string v0, "getUriFor"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const-class v2, Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "SettingsHelper"

    const-string v0, "Exception occurred"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public dump()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Int"

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getIntValue()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    const-string v1, "String"

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getStringValue()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string v1, "Float"

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/util/SettingsHelper$Item;->getFloatValue()F

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    :cond_2
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public equals(Landroid/net/Uri;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mUri:Landroid/net/Uri;

    invoke-virtual {p1, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getFloatValue()F
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mCachedIntegrity:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper$Item;->this$0:Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/util/SettingsHelper;->-$$Nest$fgetmResolver(Lcom/android/systemui/util/SettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper$Item;->this$0:Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/util/SettingsHelper;->-$$Nest$fgetmResolver(Lcom/android/systemui/util/SettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$Item;->read(Landroid/content/ContentResolver;)V

    :cond_0
    iget p0, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mFloatValue:F

    return p0
.end method

.method public getIntValue()I
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mCachedIntegrity:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper$Item;->this$0:Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/util/SettingsHelper;->-$$Nest$fgetmResolver(Lcom/android/systemui/util/SettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper$Item;->this$0:Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/util/SettingsHelper;->-$$Nest$fgetmResolver(Lcom/android/systemui/util/SettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$Item;->read(Landroid/content/ContentResolver;)V

    :cond_0
    iget p0, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mIntValue:I

    return p0
.end method

.method public getStringValue()Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mCachedIntegrity:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper$Item;->this$0:Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/util/SettingsHelper;->-$$Nest$fgetmResolver(Lcom/android/systemui/util/SettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper$Item;->this$0:Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/util/SettingsHelper;->-$$Nest$fgetmResolver(Lcom/android/systemui/util/SettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/util/SettingsHelper$Item;->read(Landroid/content/ContentResolver;)V

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mStringValue:Ljava/lang/String;

    return-object p0
.end method

.method public isCachedIntegrity()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mCachedIntegrity:Z

    return p0
.end method

.method public read(Landroid/content/ContentResolver;)V
    .locals 12

    const-string v0, "android.provider.Settings$"

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mSettingType:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "ForUser"

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mForUser:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x0

    const-string v5, "String"

    const/4 v6, 0x1

    const-string v7, "Float"

    const-string v8, "Int"

    const-class v9, Ljava/lang/String;

    const-string v10, "get"

    if-eqz v1, :cond_7

    :try_start_1
    iget-object v1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDef:Ljava/lang/Object;

    const/4 v11, -0x2

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mForUser:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const-class v10, Landroid/content/ContentResolver;

    aput-object v10, v5, v4

    aput-object v9, v5, v6

    iget-object v4, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_0

    :catch_0
    move-exception p0

    goto/16 :goto_5

    :cond_1
    iget-object v4, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    :cond_2
    :goto_0
    aput-object v9, v5, v3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v5, v2

    invoke-virtual {v0, v1, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDef:Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {p1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mIntValue:I

    goto/16 :goto_4

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDef:Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {p1, v2, v3, v4}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mFloatValue:F

    goto/16 :goto_4

    :cond_4
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v10, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mForUser:Ljava/lang/String;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v10, Landroid/content/ContentResolver;

    aput-object v10, v2, v4

    aput-object v9, v2, v6

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mKey:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p1, v2, v3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mIntValue:I

    goto/16 :goto_4

    :cond_5
    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mKey:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p1, v2, v3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mStringValue:Ljava/lang/String;

    goto/16 :goto_4

    :cond_6
    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mKey:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {p1, v2, v3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mFloatValue:F

    goto/16 :goto_4

    :cond_7
    iget-object v1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDef:Ljava/lang/Object;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_3

    :cond_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/lang/Class;

    const-class v5, Landroid/content/ContentResolver;

    aput-object v5, v2, v4

    aput-object v9, v2, v6

    iget-object v4, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    goto :goto_2

    :cond_9
    iget-object v4, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v9, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    :cond_a
    :goto_2
    aput-object v9, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDef:Ljava/lang/Object;

    filled-new-array {p1, v2, v3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mIntValue:I

    goto/16 :goto_4

    :cond_b
    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDef:Ljava/lang/Object;

    filled-new-array {p1, v2, v3}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mFloatValue:F

    goto :goto_4

    :cond_c
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Class;

    const-class v3, Landroid/content/ContentResolver;

    aput-object v3, v2, v4

    aput-object v9, v2, v6

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mKey:Ljava/lang/String;

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mIntValue:I

    goto :goto_4

    :cond_d
    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mKey:Ljava/lang/String;

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mStringValue:Ljava/lang/String;

    goto :goto_4

    :cond_e
    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mDataType:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mKey:Ljava/lang/String;

    filled-new-array {p1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    iput p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mFloatValue:F

    :cond_f
    :goto_4
    iput-boolean v6, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mCachedIntegrity:Z
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_6

    :goto_5
    const-string p1, "SettingsHelper"

    const-string v0, "Exception occurred"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    return-void
.end method

.method public registerObserver()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/util/SettingsHelper$Item;->this$0:Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v0}, Lcom/android/systemui/util/SettingsHelper;->-$$Nest$fgetmResolver(Lcom/android/systemui/util/SettingsHelper;)Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mKey:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/systemui/util/SettingsHelper$Item;->getUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/util/SettingsHelper$Item;->this$0:Lcom/android/systemui/util/SettingsHelper;

    invoke-static {v2}, Lcom/android/systemui/util/SettingsHelper;->-$$Nest$fgetmSettingsObserver(Lcom/android/systemui/util/SettingsHelper;)Landroid/database/ContentObserver;

    move-result-object v2

    iget-boolean p0, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mIsUserAll:Z

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    goto :goto_0

    :cond_0
    const/4 p0, -0x2

    :goto_0
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public resetCachedIntegrity()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mCachedIntegrity:Z

    return-void
.end method

.method public setIntValue(I)V
    .locals 0

    iput p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mIntValue:I

    return-void
.end method

.method public setStringValue(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/util/SettingsHelper$Item;->mStringValue:Ljava/lang/String;

    return-void
.end method
