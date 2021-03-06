<div class="account-new">
<div class="profile-wrap">
	<!-- IMPORT partials/account/header.tpl -->
	<!-- IF sso.length --><div><!-- ENDIF sso.length -->
		<div class="row">
<!-- IF fuckTHEPolice -->
			<div class="col-md-2 col-sm-4">
				<div class="account-picture-block text-center">
					<div class="row">
						<div class="col-xs-12 hidden-xs">
							<!-- IF picture -->
							<img id="user-current-picture" class="avatar avatar-lg avatar-rounded" src="{picture}" />
							<!-- ELSE -->
							<div class="avatar avatar-lg avatar-rounded" style="background-color: {icon:bgColor};">{icon:text}</div>
							<!-- ENDIF picture -->
						</div>
					</div>
					<ul class="list-group">
						<a id="changePictureBtn" href="#" class="list-group-item">[[user:change_picture]]</a>
						<a href="https://guld.moderskeppet.se/profil/anvandarnamn/" class="list-group-item">Byt namn eller epost</a>
						<a href="https://guld.moderskeppet.se/profil/losenord/" class="list-group-item">Byt lösenord</a>
						<!-- BEGIN editButtons -->
						<a href="{config.relative_path}{editButtons.link}" class="list-group-item">{editButtons.text}</a>
						<!-- END editButtons -->
					</ul>
				</div>
			</div>
 <!-- ENDIF fuckTHEPolice -->
 
 </div>
			<div class="<!-- IF !sso.length -->col-md-12 col-sm-12<!-- ELSE -->col-md-5 col-sm-4<!-- ENDIF !sso.length -->">
				<div>
					<form class='form-horizontal'>
                        <div class="control-group">
                            <label class="control-label">Profilbild</label>
                            <div class="controls">
                                <a id="changePictureBtn" href="#" class="list-group-item">[[user:change_picture]]</a>
                            </div>
                        </div>

						<div class="control-group">
							<label class="control-label" for="inputFullname">Namn</label>
							<div class="controls">
							<!-- IF !canBan -->
								<input class="form-control" type="text" id="disabled" disabled placeholder="[[user:fullname]]" value="{fullname}">
							<!-- ELSE -->
								<input class="form-control" type="text" id="inputFullname" placeholder="[[user:fullname]]" value="{fullname}">
							<!-- ENDIF !canBan -->
							</div>
						</div>

						<div class="control-group">
							<label class="control-label" for="inputWebsite">[[user:website]]</label>
							<div class="controls">
								<input class="form-control" type="text" id="inputWebsite" placeholder="http://..." value="{website}">
							</div>
						</div>

						<div class="control-group">
							<label class="control-label" for="inputLocation">[[user:location]]</label>
							<div class="controls">
								<input class="form-control" type="text" id="inputLocation" placeholder="[[user:location]]" value="{location}">
							</div>
						</div>

						<div class="control-group">
							<label class="control-label" for="inputBirthday">[[user:birthday]]</label>
							<div class="controls">
								<input class="form-control" id="inputBirthday" value="{birthday}" placeholder="mm/dd/yyyy">
							</div>
						</div>

						<div class="control-group">
							<label class="control-label" for="inputAboutMe">[[user:aboutme]]</label> <small><label id="aboutMeCharCountLeft"></label></small>
							<div class="controls">
								<textarea class="form-control" id="inputAboutMe" rows="5">{aboutme}</textarea>
							</div>
						</div>
						<!-- IF !disableSignatures -->
						<div class="control-group">
							<label class="control-label" for="inputSignature">[[user:signature]]</label> <small><label id="signatureCharCountLeft"></label></small>
							<div class="controls">
								<textarea class="form-control" id="inputSignature" rows="5">{signature}</textarea>
							</div>
						</div>
						<!-- ENDIF !disableSignatures -->

						<input type="hidden" id="inputUID" value="{uid}"><br />

						<div class="form-actions">
							<a id="submitBtn" href="#" class="btn btn-primary">[[global:save_changes]]</a>
						</div>

					</form>
				</div>

				<hr class="visible-xs visible-sm"/>
			</div>

			<!-- IF sso.length -->
			<div class="col-md-5 col-sm-4">
				<label class="control-label">[[user:sso.title]]</label>
				<div class="list-group">
					<!-- BEGIN sso -->
					<a class="list-group-item" href="{../url}" target="<!-- IF ../associated -->_blank<!-- ELSE -->_top<!-- ENDIF ../associated -->">
						<!-- IF ../icon --><i class="fa {../icon}"></i><!-- ENDIF ../icon -->
						<!-- IF ../associated -->[[user:sso.associated]]<!-- ELSE -->[[user:sso.not-associated]]<!-- ENDIF ../associated -->
						{../name}
					</a>
					<!-- END sso -->
				</div>
			</div>
			<!-- ENDIF sso.length -->
		</div>
	<!-- IF sso.length --></div><!-- ENDIF sso.length -->
</div>

