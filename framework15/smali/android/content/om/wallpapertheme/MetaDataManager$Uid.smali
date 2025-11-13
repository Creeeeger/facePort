.class public Landroid/content/om/wallpapertheme/MetaDataManager$Uid;
.super Ljava/lang/Object;
.source "MetaDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/om/wallpapertheme/MetaDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Uid"
.end annotation


# static fields
.field private static final blacklist VALUE_TYPE_BGCOLOR:Ljava/lang/String; = "BgColor"

.field private static final blacklist VALUE_TYPE_BOOL:Ljava/lang/String; = "Bool"

.field private static final blacklist VALUE_TYPE_COLOR:Ljava/lang/String; = "Color"

.field private static final blacklist VALUE_TYPE_INTEGER:Ljava/lang/String; = "Integer"

.field private static final blacklist VALUE_TYPE_TEXT:Ljava/lang/String; = "Text"

.field private static final blacklist VALUE_TYPE_TEXTCOLOR:Ljava/lang/String; = "TextColor"

.field private static final blacklist VALUE_TYPE_TINTCOLOR:Ljava/lang/String; = "TintColor"


# instance fields
.field private blacklist mDefaultValue:Ljava/lang/String;

.field private blacklist mDestAttribName:Ljava/lang/String;

.field private blacklist mOpacity:Ljava/lang/String;

.field private blacklist mType:I

.field private blacklist mUidValue:Ljava/lang/String;

.field private blacklist mValueRef:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmDestAttribName(Landroid/content/om/wallpapertheme/MetaDataManager$Uid;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;->mDestAttribName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmOpacity(Landroid/content/om/wallpapertheme/MetaDataManager$Uid;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;->mOpacity:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmType(Landroid/content/om/wallpapertheme/MetaDataManager$Uid;)I
    .locals 0

    iget p0, p0, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;->mType:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUidValue(Landroid/content/om/wallpapertheme/MetaDataManager$Uid;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;->mUidValue:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmValueRef(Landroid/content/om/wallpapertheme/MetaDataManager$Uid;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;->mValueRef:Ljava/lang/String;

    return-object p0
.end method

.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;->mUidValue:Ljava/lang/String;

    iput-object p3, p0, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;->mDestAttribName:Ljava/lang/String;

    iput-object p5, p0, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;->mValueRef:Ljava/lang/String;

    if-eqz p6, :cond_1

    invoke-virtual {p6}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p6

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;->mOpacity:Ljava/lang/String;

    iput-object p4, p0, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;->mDefaultValue:Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_2
    goto :goto_2

    :sswitch_0
    const-string v0, "BgColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v5

    goto :goto_3

    :sswitch_1
    const-string v0, "TextColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v4

    goto :goto_3

    :sswitch_2
    const-string v0, "Color"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_3

    :sswitch_3
    const-string v0, "Text"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    goto :goto_3

    :sswitch_4
    const-string v0, "Bool"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    goto :goto_3

    :sswitch_5
    const-string v0, "Integer"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_3

    :sswitch_6
    const-string v0, "TintColor"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_3

    :goto_2
    const/4 v0, -0x1

    :goto_3
    packed-switch v0, :pswitch_data_0

    iput v1, p0, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;->mType:I

    goto :goto_4

    :pswitch_0
    iput v2, p0, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;->mType:I

    goto :goto_4

    :pswitch_1
    iput v3, p0, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;->mType:I

    goto :goto_4

    :pswitch_2
    iput v4, p0, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;->mType:I

    goto :goto_4

    :pswitch_3
    iput v5, p0, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;->mType:I

    nop

    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x396c4ef8 -> :sswitch_6
        -0x2811e6e2 -> :sswitch_5
        0x1faf0a -> :sswitch_4
        0x27b94d -> :sswitch_3
        0x3e43f43 -> :sswitch_2
        0x380d4e16 -> :sswitch_1
        0x5702adfe -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public blacklist getDefaultValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;->mDefaultValue:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getDestAttribName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;->mDestAttribName:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getOpacity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;->mOpacity:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getReference()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;->mValueRef:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getType()I
    .locals 1

    iget v0, p0, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;->mType:I

    return v0
.end method

.method public blacklist getUidValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/om/wallpapertheme/MetaDataManager$Uid;->mUidValue:Ljava/lang/String;

    return-object v0
.end method
