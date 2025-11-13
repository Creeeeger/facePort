.class public Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;
.super Ljava/lang/Object;
.source "RefreshRateConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/hardware/display/RefreshRateConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SupportedRefreshRate"
.end annotation


# static fields
.field static final blacklist DEFAULT_REFRESH_RATE:I = 0x3c


# instance fields
.field private blacklist maxRefreshRate:I

.field private blacklist minRefreshRate:I

.field private blacklist supportedRefreshRateListForPassive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic blacklist this$0:Lcom/samsung/android/hardware/display/RefreshRateConfig;


# direct methods
.method private constructor blacklist <init>(Lcom/samsung/android/hardware/display/RefreshRateConfig;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "this$0"    # Lcom/samsung/android/hardware/display/RefreshRateConfig;
    .param p2, "feature"    # Ljava/lang/String;
    .param p3, "useDefaultRefreshRate"    # Z

    .line 166
    iput-object p1, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->this$0:Lcom/samsung/android/hardware/display/RefreshRateConfig;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    const v0, 0x7fffffff

    iput v0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->minRefreshRate:I

    .line 163
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->maxRefreshRate:I

    .line 164
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->supportedRefreshRateListForPassive:Ljava/util/ArrayList;

    .line 167
    if-eqz p3, :cond_0

    .line 168
    const/16 v1, 0x3c

    iput v1, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->maxRefreshRate:I

    iput v1, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->minRefreshRate:I

    .line 169
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 170
    return-void

    .line 173
    :cond_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 174
    const-string v0, ","

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 175
    .local v0, "supportedRefreshRates":[Ljava/lang/String;
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 176
    .local v3, "supportedRefreshRate":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 177
    .local v4, "refreshRate":I
    iget-object v5, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->supportedRefreshRateListForPassive:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    iget v5, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->minRefreshRate:I

    if-ge v4, v5, :cond_1

    .line 179
    iput v4, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->minRefreshRate:I

    .line 181
    :cond_1
    iget v5, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->maxRefreshRate:I

    if-le v4, v5, :cond_2

    .line 182
    iput v4, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->maxRefreshRate:I

    .line 175
    .end local v3    # "supportedRefreshRate":Ljava/lang/String;
    .end local v4    # "refreshRate":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 185
    :cond_3
    iget-object v1, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->supportedRefreshRateListForPassive:Ljava/util/ArrayList;

    new-instance v2, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate$$ExternalSyntheticLambda0;-><init>(Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->removeIf(Ljava/util/function/Predicate;)Z

    .line 187
    iget-object v1, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->supportedRefreshRateListForPassive:Ljava/util/ArrayList;

    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 189
    .end local v0    # "supportedRefreshRates":[Ljava/lang/String;
    :cond_4
    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/samsung/android/hardware/display/RefreshRateConfig;Ljava/lang/String;ZLcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate-IA;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;-><init>(Lcom/samsung/android/hardware/display/RefreshRateConfig;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public blacklist getSupportedRefreshRateForPassive(I)I
    .locals 2
    .param p1, "refreshRate"    # I

    .line 200
    iget-object v0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->supportedRefreshRateListForPassive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 201
    .local v1, "nextRefreshRate":I
    if-lt v1, p1, :cond_0

    .line 202
    return v1

    .line 204
    .end local v1    # "nextRefreshRate":I
    :cond_0
    goto :goto_0

    .line 206
    :cond_1
    return p1
.end method

.method synthetic blacklist lambda$new$0$com-samsung-android-hardware-display-RefreshRateConfig$SupportedRefreshRate(Ljava/lang/Integer;)Z
    .locals 2
    .param p1, "refreshRate"    # Ljava/lang/Integer;

    .line 186
    iget v0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->maxRefreshRate:I

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    rem-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public blacklist max()I
    .locals 1

    .line 196
    iget v0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->maxRefreshRate:I

    return v0
.end method

.method public blacklist min()I
    .locals 1

    .line 192
    iget v0, p0, Lcom/samsung/android/hardware/display/RefreshRateConfig$SupportedRefreshRate;->minRefreshRate:I

    return v0
.end method
