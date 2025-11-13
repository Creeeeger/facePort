.class public final Landroid/view/ContentInfo$Builder;
.super Ljava/lang/Object;
.source "ContentInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ContentInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private blacklist mClip:Landroid/content/ClipData;

.field private blacklist mDragAndDropPermissions:Landroid/view/DragAndDropPermissions;

.field private blacklist mExtras:Landroid/os/Bundle;

.field private blacklist mFlags:I

.field private blacklist mInputContentInfo:Landroid/view/inputmethod/InputContentInfo;

.field private blacklist mLinkUri:Landroid/net/Uri;

.field private blacklist mSource:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmClip(Landroid/view/ContentInfo$Builder;)Landroid/content/ClipData;
    .locals 0

    iget-object p0, p0, Landroid/view/ContentInfo$Builder;->mClip:Landroid/content/ClipData;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDragAndDropPermissions(Landroid/view/ContentInfo$Builder;)Landroid/view/DragAndDropPermissions;
    .locals 0

    iget-object p0, p0, Landroid/view/ContentInfo$Builder;->mDragAndDropPermissions:Landroid/view/DragAndDropPermissions;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmExtras(Landroid/view/ContentInfo$Builder;)Landroid/os/Bundle;
    .locals 0

    iget-object p0, p0, Landroid/view/ContentInfo$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmFlags(Landroid/view/ContentInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/view/ContentInfo$Builder;->mFlags:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmInputContentInfo(Landroid/view/ContentInfo$Builder;)Landroid/view/inputmethod/InputContentInfo;
    .locals 0

    iget-object p0, p0, Landroid/view/ContentInfo$Builder;->mInputContentInfo:Landroid/view/inputmethod/InputContentInfo;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLinkUri(Landroid/view/ContentInfo$Builder;)Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Landroid/view/ContentInfo$Builder;->mLinkUri:Landroid/net/Uri;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmSource(Landroid/view/ContentInfo$Builder;)I
    .locals 0

    iget p0, p0, Landroid/view/ContentInfo$Builder;->mSource:I

    return p0
.end method

.method public constructor whitelist <init>(Landroid/content/ClipData;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroid/view/ContentInfo$Builder;->mClip:Landroid/content/ClipData;

    iput p2, p0, Landroid/view/ContentInfo$Builder;->mSource:I

    return-void
.end method

.method public constructor whitelist <init>(Landroid/view/ContentInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Landroid/view/ContentInfo;->-$$Nest$fgetmClip(Landroid/view/ContentInfo;)Landroid/content/ClipData;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ContentInfo$Builder;->mClip:Landroid/content/ClipData;

    invoke-static {p1}, Landroid/view/ContentInfo;->-$$Nest$fgetmSource(Landroid/view/ContentInfo;)I

    move-result v0

    iput v0, p0, Landroid/view/ContentInfo$Builder;->mSource:I

    invoke-static {p1}, Landroid/view/ContentInfo;->-$$Nest$fgetmFlags(Landroid/view/ContentInfo;)I

    move-result v0

    iput v0, p0, Landroid/view/ContentInfo$Builder;->mFlags:I

    invoke-static {p1}, Landroid/view/ContentInfo;->-$$Nest$fgetmLinkUri(Landroid/view/ContentInfo;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ContentInfo$Builder;->mLinkUri:Landroid/net/Uri;

    invoke-static {p1}, Landroid/view/ContentInfo;->-$$Nest$fgetmExtras(Landroid/view/ContentInfo;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ContentInfo$Builder;->mExtras:Landroid/os/Bundle;

    invoke-static {p1}, Landroid/view/ContentInfo;->-$$Nest$fgetmInputContentInfo(Landroid/view/ContentInfo;)Landroid/view/inputmethod/InputContentInfo;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ContentInfo$Builder;->mInputContentInfo:Landroid/view/inputmethod/InputContentInfo;

    invoke-static {p1}, Landroid/view/ContentInfo;->-$$Nest$fgetmDragAndDropPermissions(Landroid/view/ContentInfo;)Landroid/view/DragAndDropPermissions;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ContentInfo$Builder;->mDragAndDropPermissions:Landroid/view/DragAndDropPermissions;

    return-void
.end method


# virtual methods
.method public whitelist build()Landroid/view/ContentInfo;
    .locals 2

    new-instance v0, Landroid/view/ContentInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/view/ContentInfo;-><init>(Landroid/view/ContentInfo$Builder;Landroid/view/ContentInfo-IA;)V

    return-object v0
.end method

.method public whitelist setClip(Landroid/content/ClipData;)Landroid/view/ContentInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/ContentInfo$Builder;->mClip:Landroid/content/ClipData;

    return-object p0
.end method

.method public blacklist setDragAndDropPermissions(Landroid/view/DragAndDropPermissions;)Landroid/view/ContentInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/ContentInfo$Builder;->mDragAndDropPermissions:Landroid/view/DragAndDropPermissions;

    return-object p0
.end method

.method public whitelist setExtras(Landroid/os/Bundle;)Landroid/view/ContentInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/ContentInfo$Builder;->mExtras:Landroid/os/Bundle;

    return-object p0
.end method

.method public whitelist setFlags(I)Landroid/view/ContentInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/view/ContentInfo$Builder;->mFlags:I

    return-object p0
.end method

.method public blacklist setInputContentInfo(Landroid/view/inputmethod/InputContentInfo;)Landroid/view/ContentInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/ContentInfo$Builder;->mInputContentInfo:Landroid/view/inputmethod/InputContentInfo;

    return-object p0
.end method

.method public whitelist setLinkUri(Landroid/net/Uri;)Landroid/view/ContentInfo$Builder;
    .locals 0

    iput-object p1, p0, Landroid/view/ContentInfo$Builder;->mLinkUri:Landroid/net/Uri;

    return-object p0
.end method

.method public whitelist setSource(I)Landroid/view/ContentInfo$Builder;
    .locals 0

    iput p1, p0, Landroid/view/ContentInfo$Builder;->mSource:I

    return-object p0
.end method
