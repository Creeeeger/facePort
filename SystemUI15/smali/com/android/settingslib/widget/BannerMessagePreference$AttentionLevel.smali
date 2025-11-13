.class public final enum Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;
.super Ljava/lang/Enum;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;",
        ">;"
    }
.end annotation


# static fields
.field public static final synthetic $VALUES:[Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;

.field public static final enum HIGH:Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;


# instance fields
.field private final mAccentColorResId:I

.field private final mAttrValue:I

.field private final mBackgroundColorResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 19

    new-instance v6, Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-string v1, "HIGH"

    const v4, 0x7f060048

    const v5, 0x7f060045

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;-><init>(Ljava/lang/String;IIII)V

    sput-object v6, Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;->HIGH:Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;

    new-instance v0, Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;

    const/4 v9, 0x1

    const/4 v10, 0x1

    const-string v8, "MEDIUM"

    const v11, 0x7f06004a

    const v12, 0x7f060047

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;-><init>(Ljava/lang/String;IIII)V

    new-instance v1, Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;

    const/4 v15, 0x2

    const/16 v16, 0x2

    const-string v14, "LOW"

    const v17, 0x7f060049

    const v18, 0x7f060046

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;-><init>(Ljava/lang/String;IIII)V

    filled-new-array {v6, v0, v1}, [Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;->$VALUES:[Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;->mAttrValue:I

    iput p4, p0, Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;->mBackgroundColorResId:I

    iput p5, p0, Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;->mAccentColorResId:I

    return-void
.end method

.method public static fromAttr(I)Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;
    .locals 5

    invoke-static {}, Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;->values()[Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;->mAttrValue:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;
    .locals 1

    const-class v0, Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;

    return-object p0
.end method

.method public static values()[Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;
    .locals 1

    sget-object v0, Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;->$VALUES:[Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;

    invoke-virtual {v0}, [Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;

    return-object v0
.end method


# virtual methods
.method public final getAccentColorResId()I
    .locals 0

    iget p0, p0, Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;->mAccentColorResId:I

    return p0
.end method

.method public final getBackgroundColorResId()I
    .locals 0

    iget p0, p0, Lcom/android/settingslib/widget/BannerMessagePreference$AttentionLevel;->mBackgroundColorResId:I

    return p0
.end method
