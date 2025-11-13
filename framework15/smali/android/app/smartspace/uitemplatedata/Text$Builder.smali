.class public final Landroid/app/smartspace/uitemplatedata/Text$Builder;
.super Ljava/lang/Object;
.source "Text.java"


# annotations
.annotation runtime Landroid/annotation/SystemApi;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/smartspace/uitemplatedata/Text;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mMaxLines:I

.field private final blacklist mText:Ljava/lang/CharSequence;

.field private blacklist mTruncateAtType:Landroid/text/TextUtils$TruncateAt;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/Text$Builder;->mText:Ljava/lang/CharSequence;

    sget-object v0, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/Text$Builder;->mTruncateAtType:Landroid/text/TextUtils$TruncateAt;

    const/4 v0, 0x1

    iput v0, p0, Landroid/app/smartspace/uitemplatedata/Text$Builder;->mMaxLines:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/smartspace/uitemplatedata/Text;
    .locals 5

    new-instance v0, Landroid/app/smartspace/uitemplatedata/Text;

    iget-object v1, p0, Landroid/app/smartspace/uitemplatedata/Text$Builder;->mText:Ljava/lang/CharSequence;

    iget-object v2, p0, Landroid/app/smartspace/uitemplatedata/Text$Builder;->mTruncateAtType:Landroid/text/TextUtils$TruncateAt;

    iget v3, p0, Landroid/app/smartspace/uitemplatedata/Text$Builder;->mMaxLines:I

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/app/smartspace/uitemplatedata/Text;-><init>(Ljava/lang/CharSequence;Landroid/text/TextUtils$TruncateAt;ILandroid/app/smartspace/uitemplatedata/Text-IA;)V

    return-object v0
.end method

.method public whitelist setMaxLines(I)Landroid/app/smartspace/uitemplatedata/Text$Builder;
    .locals 0

    iput p1, p0, Landroid/app/smartspace/uitemplatedata/Text$Builder;->mMaxLines:I

    return-object p0
.end method

.method public whitelist setTruncateAtType(Landroid/text/TextUtils$TruncateAt;)Landroid/app/smartspace/uitemplatedata/Text$Builder;
    .locals 1

    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/TextUtils$TruncateAt;

    iput-object v0, p0, Landroid/app/smartspace/uitemplatedata/Text$Builder;->mTruncateAtType:Landroid/text/TextUtils$TruncateAt;

    return-object p0
.end method
