.class public final synthetic Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98004394 e985489769f0d3fc3b6595d9479b367efde92149910ac9ddea5a627f1f479e50"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;

    check-cast p1, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionDialogDelegate;

    sget v0, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->$r8$clinit:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Lcom/android/systemui/mediaprojection/permission/BaseMediaProjectionPermissionDialogDelegate;->selectedScreenShareOption:Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;

    iget p1, p1, Lcom/android/systemui/mediaprojection/permission/ScreenShareOption;->mode:I

    invoke-virtual {p0, p1}, Lcom/android/systemui/mediaprojection/permission/MediaProjectionPermissionActivity;->grantMediaProjectionPermission(I)V

    return-void
.end method
