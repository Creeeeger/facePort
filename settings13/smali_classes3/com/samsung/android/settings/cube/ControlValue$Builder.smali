.class public Lcom/samsung/android/settings/cube/ControlValue$Builder;
.super Ljava/lang/Object;
.source "ControlValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/settings/cube/ControlValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAvailabilityStatus:I

.field private mBundle:Landroid/os/Bundle;

.field private mBundleDataAsString:Ljava/lang/String;

.field private mControlId:Ljava/lang/String;

.field private final mControlType:I

.field private mForceChange:Ljava/lang/Boolean;

.field private mIsDefault:Ljava/lang/Boolean;

.field private final mKey:Ljava/lang/String;

.field private mSourceInfo:Lcom/samsung/android/lib/episode/SourceInfo;

.field private mStatusCode:Ljava/lang/String;

.field private mStorePackage:Ljava/lang/String;

.field private mSummary:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAvailabilityStatus(Lcom/samsung/android/settings/cube/ControlValue$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mAvailabilityStatus:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBundle(Lcom/samsung/android/settings/cube/ControlValue$Builder;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBundleDataAsString(Lcom/samsung/android/settings/cube/ControlValue$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mBundleDataAsString:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmControlId(Lcom/samsung/android/settings/cube/ControlValue$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mControlId:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmControlType(Lcom/samsung/android/settings/cube/ControlValue$Builder;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mControlType:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmForceChange(Lcom/samsung/android/settings/cube/ControlValue$Builder;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mForceChange:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsDefault(Lcom/samsung/android/settings/cube/ControlValue$Builder;)Ljava/lang/Boolean;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mIsDefault:Ljava/lang/Boolean;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmKey(Lcom/samsung/android/settings/cube/ControlValue$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mKey:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSourceInfo(Lcom/samsung/android/settings/cube/ControlValue$Builder;)Lcom/samsung/android/lib/episode/SourceInfo;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mSourceInfo:Lcom/samsung/android/lib/episode/SourceInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStatusCode(Lcom/samsung/android/settings/cube/ControlValue$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mStatusCode:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStorePackage(Lcom/samsung/android/settings/cube/ControlValue$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mStorePackage:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSummary(Lcom/samsung/android/settings/cube/ControlValue$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUri(Lcom/samsung/android/settings/cube/ControlValue$Builder;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ControlValue.Builder"

    .line 169
    iput-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->TAG:Ljava/lang/String;

    .line 185
    iput-object p1, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mKey:Ljava/lang/String;

    .line 186
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mBundle:Landroid/os/Bundle;

    .line 187
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mIsDefault:Ljava/lang/Boolean;

    .line 188
    iput-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mForceChange:Ljava/lang/Boolean;

    .line 189
    iput p2, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mControlType:I

    .line 190
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "@@"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mControlId:Ljava/lang/String;

    const/4 p1, 0x0

    .line 191
    iput-object p1, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mSourceInfo:Lcom/samsung/android/lib/episode/SourceInfo;

    return-void
.end method


# virtual methods
.method public addAttribute(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue$Builder;
    .locals 2

    .line 243
    iget-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the value of the attribute ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") will be replaced with a new one"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ControlValue.Builder"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public addAttributeInt(Ljava/lang/String;I)Lcom/samsung/android/settings/cube/ControlValue$Builder;
    .locals 2

    .line 252
    iget-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the value of the attribute ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") will be replaced with a new one"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ControlValue.Builder"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object p0
.end method

.method public addAttributeIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/samsung/android/settings/cube/ControlValue$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/samsung/android/settings/cube/ControlValue$Builder;"
        }
    .end annotation

    .line 270
    iget-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 271
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the value of the attribute ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") will be replaced with a new one"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ControlValue.Builder"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putIntegerArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public addAttributeStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)Lcom/samsung/android/settings/cube/ControlValue$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/samsung/android/settings/cube/ControlValue$Builder;"
        }
    .end annotation

    .line 261
    iget-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "the value of the attribute ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ") will be replaced with a new one"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ControlValue.Builder"

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-object p0
.end method

.method public build()Lcom/samsung/android/settings/cube/ControlValue;
    .locals 2

    .line 312
    invoke-virtual {p0}, Lcom/samsung/android/settings/cube/ControlValue$Builder;->isValid()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/samsung/android/settings/cube/ControlValue;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/settings/cube/ControlValue;-><init>(Lcom/samsung/android/settings/cube/ControlValue$Builder;Lcom/samsung/android/settings/cube/ControlValue-IA;)V

    move-object v1, v0

    :cond_0
    return-object v1
.end method

.method public isValid()Z
    .locals 4

    .line 195
    iget-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mBundleDataAsString:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mKey:Ljava/lang/String;

    .line 196
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isValid() - invalid data : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mBundle:Landroid/os/Bundle;

    .line 199
    invoke-virtual {v2}, Landroid/os/Bundle;->isEmpty()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " / "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mBundleDataAsString:Ljava/lang/String;

    .line 200
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mKey:Ljava/lang/String;

    .line 201
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "ControlValue.Builder"

    .line 198
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0
.end method

.method public setAvailabilityStatus(I)Lcom/samsung/android/settings/cube/ControlValue$Builder;
    .locals 0

    .line 302
    iput p1, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mAvailabilityStatus:I

    return-object p0
.end method

.method public setBundle(Landroid/os/Bundle;)Lcom/samsung/android/settings/cube/ControlValue$Builder;
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mBundle:Landroid/os/Bundle;

    return-object p0
.end method

.method public setBundleDataAsString(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue$Builder;
    .locals 0

    .line 290
    iput-object p1, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mBundleDataAsString:Ljava/lang/String;

    return-object p0
.end method

.method public setControlId(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue$Builder;
    .locals 1

    .line 295
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 296
    iput-object p1, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mControlId:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method public setDefault(Z)Lcom/samsung/android/settings/cube/ControlValue$Builder;
    .locals 0

    .line 279
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mIsDefault:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setIgnoreUserInteraction(Ljava/lang/Boolean;)Lcom/samsung/android/settings/cube/ControlValue$Builder;
    .locals 0

    .line 285
    iput-object p1, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mForceChange:Ljava/lang/Boolean;

    return-object p0
.end method

.method public setSourceInfo(Lcom/samsung/android/lib/episode/SourceInfo;)Lcom/samsung/android/settings/cube/ControlValue$Builder;
    .locals 0

    .line 238
    iput-object p1, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mSourceInfo:Lcom/samsung/android/lib/episode/SourceInfo;

    return-object p0
.end method

.method public setStatusCode(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue$Builder;
    .locals 0

    .line 307
    iput-object p1, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mStatusCode:Ljava/lang/String;

    return-object p0
.end method

.method public setStorePackage(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue$Builder;
    .locals 0

    .line 212
    iput-object p1, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mStorePackage:Ljava/lang/String;

    return-object p0
.end method

.method public setSummary(Ljava/lang/String;)Lcom/samsung/android/settings/cube/ControlValue$Builder;
    .locals 0

    .line 207
    iput-object p1, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mSummary:Ljava/lang/String;

    return-object p0
.end method

.method public setUri(Landroid/net/Uri;)Lcom/samsung/android/settings/cube/ControlValue$Builder;
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mUri:Landroid/net/Uri;

    return-object p0
.end method

.method public setValue(Ljava/lang/Object;)Lcom/samsung/android/settings/cube/ControlValue$Builder;
    .locals 5

    .line 222
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 223
    iget-object v1, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mBundle:Landroid/os/Bundle;

    const-string v2, "value"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ControlValue.Builder"

    const-string v3, "the element value will be replaced with a new one"

    .line 224
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 225
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "old : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {v4, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", new : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/settings/cube/ControlValue$Builder;->mBundle:Landroid/os/Bundle;

    invoke-virtual {p1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method
