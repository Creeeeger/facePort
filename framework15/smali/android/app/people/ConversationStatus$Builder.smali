.class public final Landroid/app/people/ConversationStatus$Builder;
.super Ljava/lang/Object;
.source "ConversationStatus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/people/ConversationStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field final blacklist mActivity:I

.field blacklist mAvailability:I

.field blacklist mDescription:Ljava/lang/CharSequence;

.field blacklist mEndTimeMs:J

.field blacklist mIcon:Landroid/graphics/drawable/Icon;

.field final blacklist mId:Ljava/lang/String;

.field blacklist mStartTimeMs:J


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/app/people/ConversationStatus$Builder;->mAvailability:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/app/people/ConversationStatus$Builder;->mStartTimeMs:J

    iput-wide v0, p0, Landroid/app/people/ConversationStatus$Builder;->mEndTimeMs:J

    iput-object p1, p0, Landroid/app/people/ConversationStatus$Builder;->mId:Ljava/lang/String;

    iput p2, p0, Landroid/app/people/ConversationStatus$Builder;->mActivity:I

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/app/people/ConversationStatus;
    .locals 2

    new-instance v0, Landroid/app/people/ConversationStatus;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/app/people/ConversationStatus;-><init>(Landroid/app/people/ConversationStatus$Builder;Landroid/app/people/ConversationStatus-IA;)V

    return-object v0
.end method

.method public whitelist setAvailability(I)Landroid/app/people/ConversationStatus$Builder;
    .locals 0

    iput p1, p0, Landroid/app/people/ConversationStatus$Builder;->mAvailability:I

    return-object p0
.end method

.method public whitelist setDescription(Ljava/lang/CharSequence;)Landroid/app/people/ConversationStatus$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/people/ConversationStatus$Builder;->mDescription:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public whitelist setEndTimeMillis(J)Landroid/app/people/ConversationStatus$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/app/people/ConversationStatus$Builder;->mEndTimeMs:J

    return-object p0
.end method

.method public whitelist setIcon(Landroid/graphics/drawable/Icon;)Landroid/app/people/ConversationStatus$Builder;
    .locals 0

    iput-object p1, p0, Landroid/app/people/ConversationStatus$Builder;->mIcon:Landroid/graphics/drawable/Icon;

    return-object p0
.end method

.method public whitelist setStartTimeMillis(J)Landroid/app/people/ConversationStatus$Builder;
    .locals 0

    iput-wide p1, p0, Landroid/app/people/ConversationStatus$Builder;->mStartTimeMs:J

    return-object p0
.end method
