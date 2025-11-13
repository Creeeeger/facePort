.class public final synthetic Landroid/security/KeyStoreAuditLog$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic blacklist f$0:Z

.field public final synthetic blacklist f$1:Landroid/security/KeyStoreAuditLog$AuditLogParams;

.field public final synthetic blacklist f$2:I


# direct methods
.method public synthetic constructor blacklist <init>(ZLandroid/security/KeyStoreAuditLog$AuditLogParams;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Landroid/security/KeyStoreAuditLog$$ExternalSyntheticLambda0;->f$0:Z

    iput-object p2, p0, Landroid/security/KeyStoreAuditLog$$ExternalSyntheticLambda0;->f$1:Landroid/security/KeyStoreAuditLog$AuditLogParams;

    iput p3, p0, Landroid/security/KeyStoreAuditLog$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/lang/Object;)V
    .locals 3

    iget-boolean v0, p0, Landroid/security/KeyStoreAuditLog$$ExternalSyntheticLambda0;->f$0:Z

    iget-object v1, p0, Landroid/security/KeyStoreAuditLog$$ExternalSyntheticLambda0;->f$1:Landroid/security/KeyStoreAuditLog$AuditLogParams;

    iget v2, p0, Landroid/security/KeyStoreAuditLog$$ExternalSyntheticLambda0;->f$2:I

    check-cast p1, Landroid/security/KeyStoreAuditLog$LogMessage;

    invoke-static {v0, v1, v2, p1}, Landroid/security/KeyStoreAuditLog;->lambda$auditLogPrivilegedAsUser$0(ZLandroid/security/KeyStoreAuditLog$AuditLogParams;ILandroid/security/KeyStoreAuditLog$LogMessage;)V

    return-void
.end method
